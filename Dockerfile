# Use an official Tomcat image as a parent image
FROM tomcat:10.1-jdk17-openjdk-slim

# Set the working directory in the container
WORKDIR /usr/local/tomcat/webapps

# Copy the built war file into the container
COPY target/*.war ./

# Expose the port that Tomcat will run on
EXPOSE 8086
