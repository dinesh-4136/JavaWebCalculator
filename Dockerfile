# Stage 1: Build WAR using Maven
FROM maven:3.9.6-eclipse-temurin-17 as builder
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Stage 2: Deploy WAR to Tomcat
FROM tomcat:9-jdk17
COPY --from=builder /app/target/*.war /usr/local/tomcat/webapps/
RUN chmod 755 /usr/local/tomcat/webapps/*.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
