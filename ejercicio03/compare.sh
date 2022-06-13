#!/bin/bash

FABRIC="nicopaez/passwordapi-java:java8-fabric"
ALPINE="nicopaez/passwordapi-java:java8-alpine"


docker inspect --format='{{.RootFS.Layers}}' $FABRIC | sed 's/\[//g;s/ /\n/g;s/\]//g' | cat $1 > fabric.txt
docker inspect --format='{{.RootFS.Layers}}' $ALPINE | sed 's/\[//g;s/ /\n/g;s/\]//g' | cat $1 > alpine.txt

echo "diff alpine.txt fabric.txt"
diff -y alpine.txt fabric.txt
