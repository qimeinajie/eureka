
FROM java:8-jre-alpine
COPY target/macula-cloud-gateway-1.0.0.jar /home/eureka.jar
VOLUME ["/home/logs"]
ENV ZIPKIN_PERCENTAGE=0.1


CMD ["java", "-Djava.security.egd=file:/dev/./urandom","-jar", "/home/eureka.jar"]
