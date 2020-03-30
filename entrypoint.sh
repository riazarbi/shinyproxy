#! /bin/bash

# This entrypoint wrapper just checks if we have mounted in our own application.yml and puts it in the right place
if [ -d "/shinyproxy" ]
then
  cp /shinyproxy/application.yml /opt/shinyproxy/
fi

java -jar /opt/shinyproxy/shinyproxy.jar
