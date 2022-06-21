# Ejercicio 07

El compose corre dos servicios, cada uno con una única replica

- web: Basado en la imagen `nicopaez/jobvacancy-ruby:1.3.0
- db: Basado en la imagen `postgres`

```
version: '2' --> Especifica la versión de la especificación de compose que usaremos
services: -> Sección donde estaran definidos los servicios
  web: -> El nombre del servicio
    image: nicopaez/jobvacancy-ruby:1.3.0 -> La imagen base
    links: -> Especifica aliases para acceder a otro servicio
      - db
    ports: -> Los puertos a mappear
      - "3000:3000"
    environment: -> Definición de variables de entorno
      PORT: "3000"
      RACK_ENV: "production"
      DATABASE_URL: "postgres://postgres:Passw0rd!@db:5432/postgres"
    depends_on: -> Dependencia de servicios. Web debe levantar luego de db
      - db
  db:
    image: postgres
    environment:
      POSTGRES_PASSWORD: Passw0rd!

```

Dado que cada contenedor corre en forma aislada ¿Cómo es posible que esos contenedores se vean entre sí?

Compose crea una red para los servicios definidos, así mismo posee un DNS interno donde cada container de un servicio es accesible desde cualquier otro haciendo sólo referencia al nombre del servicio. En este caso desde `web` podemos acceder al postgres haciendo referencia a su nombre de servicio, en este caso `db`. 