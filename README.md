##Script shell para instalar Docker e Docker-Compose de forma Rápida

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


