# Use a lightweight Java 21 base img
FROM eclipse-temurin:21-jre

# Create a directory inside the container
WORKDIR /app

# Copy the packaged JAR from the host to the container
COPY target/zeez-0.0.1-SNAPSHOT.jar .

# Run the app
ENTRYPOINT ["java", "-jar", "zeez-0.0.1-SNAPSHOT.jar"]
