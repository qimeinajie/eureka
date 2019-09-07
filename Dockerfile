
FROM java:8-jre-alpine
ADD .
VOLUME ["/home/logs"]
ENV ZIPKIN_PERCENTAGE=0.1


CMD ["java", "-Djava.security.egd=file:/dev/./urandom","-jar", "/target/eureka.jar"]
