# wifi-controller
## unifi consoles 快速运行
docker run -d -tid --name unifi_consoles -p 8443:8443 --privileged=true lsqtzj/unifi_consoles  /sbin/init
稍后访问 https://localhost:8443/
## omada controller 快速运行
docker run -d -tid --name omada_controller -p 8043:8043 --privileged=true lsqtzj/omada_controller  /sbin/init
稍后访问 https://localhost:8043/