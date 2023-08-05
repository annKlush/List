
# Specify the base image with Java
FROM openjdk:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the FAT-JAR to the container
COPY target/list-0.0.1-SNAPSHOT.jar /app/app.jar

# Expose the port on which the application will run
EXPOSE 8080

# Command to be executed when the container starts
CMD ["java", "-jar", "app.jar"]
