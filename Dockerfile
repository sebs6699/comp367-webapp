# Use Maven image to build the project
FROM maven:3.9.6-eclipse-temurin-17 AS build

# Set working directory
WORKDIR /app

# Copy source code into the container
COPY . .

# Run Maven package command to build the application
RUN mvn clean package -DskipTests

# Use Apache Tomcat as the runtime
FROM tomcat:9.0

# Set working directory inside Tomcat
WORKDIR /usr/local/tomcat/webapps/

# Copy the built WAR file into Tomcat
COPY --from=build /app/target/comp367-webapp.war ROOT.war

# Expose Tomcat's default HTTP port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
