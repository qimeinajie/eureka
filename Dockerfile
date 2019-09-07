
FROM java:8-jre-alpine
ADD . /root
VOLUME ["/home/logs"]
ENV ZIPKIN_PERCENTAGE=0.1
WORKDIR /root

CMD ["java", "-Djava.security.egd=file:/dev/./urandom","-jar", "/root/target/eureka.jar"]
