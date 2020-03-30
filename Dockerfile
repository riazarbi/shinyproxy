FROM openjdk:8-jre

RUN mkdir -p /opt/shinyproxy/
RUN wget https://www.shinyproxy.io/downloads/shinyproxy-2.3.0.jar -O /opt/shinyproxy/shinyproxy.jar
COPY application.yml /opt/shinyproxy/application.yml
COPY entrypoint.sh /opt/shinyproxy/entrypoint.sh
WORKDIR /opt/shinyproxy/
#CMD ["java", "-jar", "/opt/shinyproxy/shinyproxy.jar"]
CMD ["/bin/bash", "/opt/shinyproxy/entrypoint.sh"]
