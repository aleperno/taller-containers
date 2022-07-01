# Ejercicio 09

Se empleó como base el `deployment.yaml` disponbile [aca](https://gitlab.com/-/snippets/2088421/raw/master/deployment.yaml)

se modificó el numero de replicas para que levante 3.

Luego se levanta la aplicación con `kubectl apply -f deployment.yaml`

Para probarlo primero listé los pods disponibles mediante `kubectl get pods`

```NAME                       READY   STATUS    RESTARTS   AGE
pingapp-5489ddf78f-62qtx   1/1     Running   0          13m
pingapp-5489ddf78f-tvdnr   1/1     Running   0          13m
pingapp-5489ddf78f-x47m7   1/1     Running   0          13m
```

Y luego seleccionando el nombre de uno ejecuté

`kubectl exec -it pod/pingapp-5489ddf78f-62qtx -- curl localhost:4567`

obteniendo

```{"version":"3.0.0","ping":"2022-07-01T19:22:06+00:00","config_location":null,"secrets_location":null,"host":"pingapp-5489ddf78f-62qtx"}```

