
FROM java:8-jre-alpine
COPY target/my-eureka-peer3-0.0.1-SNAPSHOT /home/eureka.jar
VOLUME ["/home/logs"]
ENV ZIPKIN_PERCENTAGE=0.1


CMD ["java", "-Djava.security.egd=file:/dev/./urandom","-jar", "/home/eureka.jar"]
