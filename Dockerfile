
FROM java:8-jre-alpine
ADD . /root
VOLUME ["/home/logs"]
ENV ZIPKIN_PERCENTAGE=0.1
WORKDIR /root

CMD ["java", "-Djava.security.egd=file:/dev/./urandom","-jar", "/root/target/my-eureka-peer3-0.0.1-SNAPSHOT.jar"]
