#!/bin/bash
url=$1
expected_http_status=$2

http_status=`curl -I $1 2>/dev/null | head -n 1 | cut -d$' ' -f2`

echo "HTTP STATUS: ${http_status}"

if [ ${http_status} -eq ${expected_http_status} ]; then
  exit 0
else
  exit 1
fi
