#!/bin/bash

docker run --rm -v $(pwd)/html:/usr/share/nginx/html:ro -p 8080:80 nginx
