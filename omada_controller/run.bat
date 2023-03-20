docker run -d -tid --name omada_controller -p 8088:8088 -p 8043:8043 --privileged=true lsqtzj/omada_controller  /sbin/init
docker exec -it omada_controller /bin/sh
