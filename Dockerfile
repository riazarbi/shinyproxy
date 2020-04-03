FROM ubuntu:18.04

RUN apt-get update && apt-get install -y openjdk-8-jre wget nginx

#FROM openjdk:8-jre

RUN mkdir -p /opt/shinyproxy/
RUN wget https://www.shinyproxy.io/downloads/shinyproxy-2.3.0.jar -O /opt/shinyproxy/shinyproxy.jar

COPY nginx.conf /
COPY run.sh /
COPY application.yml /opt/shinyproxy/application.yml
COPY entrypoint.sh /opt/shinyproxy/entrypoint.sh
WORKDIR /opt/shinyproxy/

#CMD ["java", "-jar", "/opt/shinyproxy/shinyproxy.jar"]
CMD ["/bin/bash", "/run.sh"]
