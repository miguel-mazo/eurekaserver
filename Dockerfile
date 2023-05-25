FROM openjdk:17
WORKDIR /app
COPY . .
ENV SPRING_PROFILES_ACTIVE dev
ENV SPRING_CONFIG_IMPORT configserver:http://configserver:8071/
ENTRYPOINT ["java","-jar", "eurekaserver-0.0.1-SNAPSHOT.jar"]