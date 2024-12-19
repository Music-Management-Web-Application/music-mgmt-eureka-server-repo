# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the jar file into the container
COPY build/libs/eureka-server-0.0.1-SNAPSHOT.jar eureka-server.jar

# Expose the Eureka server's port
EXPOSE 8761

# Command to run the application
ENTRYPOINT ["java", "-jar", "eureka-server.jar"]