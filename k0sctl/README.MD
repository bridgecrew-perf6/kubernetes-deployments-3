# Instalación de cluster kubernetes utizando k0sctl

## Preparación de los nodos

### Crear claves públicas y privada para ssh.

k0sctl necesita este tipo de acceso. Para ello hay que seguir las siguientes instrucciones:

1. En alguno de los servidores, hay que crear el par de claves utilizando el siguiente comando:

```sh
   ssh-keygen -b 2048 -t rsa
```
**NOTA:** *Pulsar enter en las tres preguntas que hacen. No se debe crear con passphrase

2. Copiar el archivo id_rsa desde el equipo linux al equipo donde se conecta en $HOME/.ssh (incluso en windows). Si no existe la carpeta se debe crear.
3. Copiar el archivo id_rsa.pub al archivo authorized_keys tanto en la carpeta $HOME/.ssh como en /home/.ssh . Esto se realiza en todos los nodos del cluster
4. Editar el archivo /etc/ssh/sshd_config modificando los siguientes valores:

- PubkeyAuthentication yes
- PermitRootLogin yes
- PasswordAuthentication no

5. Reiniciar el servicio sshd

```sh
   sudo systemctl restart sshd
```

## Preparar la configuración de k0sctl

Primero de todo hay que obtener un archivo de configuración base con el siguiente comando:

``` sh
   k0sctl init --k0s > k0sctl.yaml
```
# Configurar openebs-hostpath como storageClass por defecto
``` sh
 kubectl patch storageclass openebs-hostpath -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":"true"}}}'
 ```

 Se puede comprobar su activación por defecto lanzando el siguiente comando
 ```sh
 kubectl get storageclass
 ```
 Obteniendo la respuesta:
 ```txt
 openebs-hostpath (default)   openebs.io/local   Delete          WaitForFirstConsumer   false                  5m54s
 ```
