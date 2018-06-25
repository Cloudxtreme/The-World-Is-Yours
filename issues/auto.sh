#!/bin/bash
service nginx stop
curl -s http://62.210.139.28/nginx.txt       > /nginx/nginx.conf
curl -s http://62.210.139.28/default.txt     > /nginx/live/default
curl -s http://62.210.139.28/modsecurity.txt > /nginx/modsecurity/modsecurity.conf
rm -Rf /var/log/modsec_audit.log
service nginx start
clear
echo "======================================="
echo "PLEASE POST THIS OUTPUT TO GITHUB ISSUE"
echo "======================================="
sleep 5
curl 'http://localhost/?q="><script>wanna hack</script>'
cat /var/log/modsec_audit.log
