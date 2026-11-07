FROM ghcr.io/lavalink-devs/lavalink:4-alpine

WORKDIR /opt/Lavalink

COPY application.yml application.yml

EXPOSE 2333

ENTRYPOINT ["java", "-Djdk.tls.client.protocols=TLSv1.2,TLSv1.3", "-jar", "Lavalink.jar"]
