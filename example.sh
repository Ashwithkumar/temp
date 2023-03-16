#!/bin/bash

url="https://www.xyz.com"

status_code=$(curl --write-out "%{http_code}\n" --silent --output /dev/null "$url")

if [[ $status_code -eq 200 ]]; then
  echo "$url is up and running!"
else
  echo "$url returned an HTTP status code of $status_code"
fi
