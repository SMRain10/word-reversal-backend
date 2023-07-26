# Use the official OpenJDK image as the base image
FROM openjdk:17

# Set the working directory inside the container
WORKDIR /app

# Copy the packaged JAR file from the target directory to the container
COPY target/word-reversal-backend-0.0.1-SNAPSHOT.jar app.jar

# Expose the port that your Spring Boot app runs on (change it if your app runs on a different port)
EXPOSE 8081

# Add metadata to the image, specifying the image name and tag
LABEL name="reverse-backend" \
      version="1.0"

# Start the Spring Boot app when the container starts
CMD ["java", "-jar", "app.jar"]