FROM openjdk:8-jdk-alpine
RUN  apk update && apk upgrade && apk add netcat-openbsd
RUN mkdir -p /usr/local/eurekaserver
ADD eurekasvr-0.0.1-SNAPSHOT.jar /usr/local/eurekaserver/
ADD run.sh run.sh
RUN chmod +x run.sh
EXPOSE 80
CMD ./run.sh
