# Ejercicio 05

- HEALTHCHECK: Se puede especificar un comando para evaluar el estado del servicio corriendo en el container. Por ejemplo si el container corre una base de datos, que la misma se encuentre disponible y accesible. De esta forma otros containers pueden evaluar el estado del servicio independientemente del estado del container (el container puede estar arriba pero el servicio estar fallido, tener un error o estar en proceso de levantar)
- ONBUILD: Agrega instrucciones a la imagen que sólo seran ejecutadas si la imagen es utilizada como base de otra imagen. 
- VOLUME: Crea un punto de montaje en el/los path especificados.