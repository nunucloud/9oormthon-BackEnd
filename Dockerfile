#FROM --platform=linux/amd64 gradle:8.10.2-jdk21 AS builder
#FROM gradle:8.14.2-jdk17 AS builder
FROM gradle:8.14.2-jdk21 AS builder
WORKDIR /app
COPY . .
RUN chmod +x ./gradlew
RUN ls -la
RUN ./gradlew --version
RUN ./gradlew clean bootJar --no-daemon

# 2단계: Runtime stage
FROM eclipse-temurin:21-jre
WORKDIR /app
COPY --from=builder /app/build/libs/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]