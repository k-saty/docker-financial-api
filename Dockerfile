# Use a lightweight OpenJDK base image
FROM openjdk:21-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the JAR file into the container
COPY financial-java-api-3.1.3-SNAPSHOT.jar financial-java-api-3.1.3-SNAPSHOT.jar

# Expose port 8080 for the app to be accessible
EXPOSE 8080

# Command to run the JAR with custom environment variables
ENTRYPOINT ["java", "-jar", "financial-java-api-3.1.3-SNAPSHOT.jar", "--spring.profiles.active=dev", "--spring.datasource.username=lockyer", "--spring.datasource.password=password"]
