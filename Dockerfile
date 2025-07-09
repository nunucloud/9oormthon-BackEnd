FROM gradle:8.14.2-jdk21

ENV GRADLE_USER_HOME=/tmp/.gradle
ENV KOTLIN_USER_HOME=/tmp/.kotlin

WORKDIR /app
COPY . .

RUN chmod +x ./gradlew
RUN ./gradlew clean bootJar --no-daemon -Dkotlin.compiler.execution.strategy=in-process

CMD ["java", "-jar", "build/libs/app.jar"]
