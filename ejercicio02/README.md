# Ejercicio 2

```
docker pull nicopaez/pingapp:3.0.0
docker tag nicopaez/pingapp:3.0.0 apernin/pingapp:3.0.0
docker login -u apernin --password-stdin
docker push apernin/pingapp:3.0.0
```

Para descargar la imagen

```
docker pull apernin/pingapp:3.0.0
```
