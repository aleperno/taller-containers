# Ejercicio 04

Link al repositorio -> [URL](https://hub.docker.com/repository/docker/apernin/passwordapi)

Imagen basada en `fabric8/java-alpine-openjdk8-jdk`

Creación imagen del docker `docker build -f Dockerfile -t ej04 .`

Correr container con la imagen creada `docker run -p 8080:8080 -it  --rm ej04`
