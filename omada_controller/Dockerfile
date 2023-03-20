FROM alpine:3.14

RUN echo 'http://dl-cdn.alpinelinux.org/alpine/v3.6/main' >> /etc/apk/repositories &&\
    echo 'http://dl-cdn.alpinelinux.org/alpine/v3.6/community' >> /etc/apk/repositories
RUN apk add openrc mongodb openjdk8 jsvc curl bash
# RUN mkdir -p /data/db

# # Install OpenJDK 8
# RUN mkdir -p /data/db

# # Install dependencies
# # https://static.tp-link.com/upload/software/2023/202302/20230227/Omada_SDN_Controller_v5.9.9_Linux_x64.tar.gz
COPY Omada_SDN_Controller_*_Linux_x64.tar.gz /opt/
RUN cd /opt/ && tar -zxvf Omada_SDN_Controller_*_Linux_x64.tar.gz && \
    cd Omada_SDN_Controller_v5.9.9_Linux_x64 && \
    ./install.sh -y && cd .. && \
    rm -rf Omada_SDN_Controller_*_Linux_x64.tar.gz Omada_SDN_Controller_*_Linux_x64

# Expose ports for Omada Controller
EXPOSE 8088 8043 27001 27002

COPY main.sh /opt/main.sh
RUN chmod +x /opt/main.sh

ENTRYPOINT [ "/opt/main.sh"]
CMD ["/bin/bash"]
