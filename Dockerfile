FROM openjdk:8-jdk-alpine
COPY ./target/configserver-0.0.1-SNAPSHOT.jar configserver.jar
COPY ./src/main/resources/config/ /config/
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/configserver.jar"]