#! /bin/bash

nginx -c /nginx.conf &
/bin/bash /opt/shinyproxy/entrypoint.sh
