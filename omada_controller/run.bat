docker run -d -tid --name omada_controller -v /data/omada/data:/opt/tplink/EAPController/data -v /data/omada/mongodb:/data/db  -p 8043:8043 --privileged=true lsqtzj/omada_controller  /sbin/init
docker exec -it omada_controller /bin/sh
