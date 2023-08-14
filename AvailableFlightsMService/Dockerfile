# Use an official Tomcat runtime as the base image
FROM tomcat:latest

# Set working directory
WORKDIR C:\Users\bgr\Documents\webapps

# Copy your Spring Boot application WAR file to the container
COPY target/AvailableFlightsMService-0.0.1-SNAPSHOT.war ./ROOT.war

# Expose the port that Tomcat will run on
EXPOSE 8083

# Command to run the application
CMD ["catalina.sh", "run"]
