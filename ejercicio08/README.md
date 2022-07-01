# Ejercicio 08

```
Utilizando docker compose generar una configuración para correr dos instancias de passwordapi (nicopaez/password-api) balanceadas por Nginx.
La aplicación tiene un endpoint /health que indica la ip/host de la instancia que atendió el pedido, se puede usar esto para verificar el correcto balanceo.
Poner la solución en un carpeta ejercicio08, incluyendo
la configuración de compose
el README.md con la forma correrlo y cualquier explicación que consideres relevante. 
Entregar el link directo a la carpeta en el repositorio.
```

## Resolución

Se definió un container de `nginx` que servirá de 'frontend' a todos los requests, éste a su vez balanceará y derivará los mismos a dos containers de `passwordapi`

El balanceo se define en un `nginx.conf`

```
upstream loadbalancer {
    server app1:3000;
    server app2:3000;
}
server {
    location / {
        proxy_pass http://loadbalancer;
    }
}
```

Cada uno de las aplicaciones posee el mismo peso, por ende 'prioridad' ante los requests. Si queremos que uno servidor posea mas peso por sobre otro, se puede definir el parámetro `weight=n` donde si un servidor A posee un peso 1 y B un 5, el servidor B en promedio tendrá 5 veces mas requests derivados que A