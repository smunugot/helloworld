FROM openjdk:8-jdk-alpine
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
COPY ${JAR_FILE} app.jar
ENV RUN_PROFILE=dev
ENTRYPOINT ["java",""-Dspring.profiles.active=${RUN_PROFILE}"","-jar", "/app.jar"]
