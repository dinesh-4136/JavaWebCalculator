FROM maven:3.9.11-eclipse-temurin-17-alpine AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package

FROM tomcat:9-jdk17
WORKDIR /usr/local/tomcat/webapps/
COPY --from=build /app/target/*.war ./app.war
RUN chmod 777 ./app.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
