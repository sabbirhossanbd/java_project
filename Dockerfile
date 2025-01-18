# Use an official OpenJDK image as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the built war file into the container
COPY target/*.war ./JAVA_PROJECT.war

# Expose the port that the web app will run on
EXPOSE 8086

# Run the application when the container starts.  
CMD ["java", "-jar", "/usr/src/app/java_project.war"]