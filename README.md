## Script shell para instalar Docker e Docker-Compose de forma Rápida

A instalação é feita pelo script shell no **`InstallDocker.sh`**, para iniciar a instalação execute ele


```
1 Clone o Repositório
2 chmod +x ./InstallDocker.sh
3 sudo ./InstallDocker.sh
```

**Verificar se o Docker foi instalado com sucesso**
`sudo systemctl status docker`

**Saída será:**
```docker.service - Docker Application Container Engine
     Loaded: loaded (/lib/systemd/system/docker.service; enabled; vendor preset: enabled)
     Active: active (running) since Sat 2021-12-18 13:18:47 UTC; 20s ago
TriggeredBy: ● docker.socket
       Docs: https://docs.docker.com
   Main PID: 707 (dockerd)
      Tasks: 7
     Memory: 109.0M
     CGroup: /system.slice/docker.service
             └─707 /usr/bin/dockerd -H fd:// --containerd=/run/containerd/containerd.sock
```


**Caso ocorra o erro ao usar o docker:**
```
Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Get "http://%2Fvar%2Frun%2Fdocker.sock/v1.24/containers/json": dial unix /var/run/docker.sock: connect: permission denied
```
**Será necessário e adicionar o usuário atual ao grupo docker**
`sudo usermod -aG docker $(whoami)`
