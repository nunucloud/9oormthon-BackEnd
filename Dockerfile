# 1단계: Builder stage
FROM gradle:8.14.2-jdk21 AS builder

ENV GRADLE_USER_HOME=/tmp/.gradle
ENV KOTLIN_COMPILER_HOME=/tmp/.kotlin

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