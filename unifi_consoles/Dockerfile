FROM debian:11

# Install MongoDB 3.6
RUN apt-get update && \
    apt-get install -y gnupg wget && \
    wget -qO - https://www.mongodb.org/static/pgp/server-3.6.asc | apt-key add - && \
    echo "deb http://repo.mongodb.org/apt/debian stretch/mongodb-org/3.6 main" | tee /etc/apt/sources.list.d/mongodb-org-3.6.list && \
    apt-get update && apt-get install -y mongodb-org
RUN mkdir -p /data/db
# Install UniFi
RUN echo 'deb http://www.ui.com/downloads/unifi/debian stable ubiquiti' | tee /etc/apt/sources.list.d/100-ubnt-unifi.list && \
    wget -O /etc/apt/trusted.gpg.d/unifi-repo.gpg https://dl.ui.com/unifi/unifi-repo.gpg && \
    apt-get update && \
    apt-get install -y unifi

# Expose ports for MongoDB and UniFi
EXPOSE 27017 8080 8443 8880 8843 3478

COPY main.sh /opt/main.sh
RUN chmod +x /opt/main.sh

ENTRYPOINT [ "/opt/main.sh"]
CMD ["/bin/bash"]
