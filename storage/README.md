# Cambiar el comportamiento de un volumen persistene

Por defecto se encuentra configurado en Delete. Esto quiere decir que sin un Presisten Volume Claim se borrar, se borra el almacenamiento físico.

Para mantenerlo (caso de base de datos), se debe ejecutar la siguiente línea de configuración:

```sh
kubectl patch pv <your-pv-name> -p "{\"spec\":{\"persistentVolumeReclaimPolicy\":\"Retain\"}}"
```
