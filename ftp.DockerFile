## Seleccio de la imatge base
# Especificam un ubunt 22.04
FROM ubuntu:24.04

# Iniciam la instalacio del servei bind9
RUN apt-get update -y && \
    apt install vsftpd -y

## Ejecucio de les instruccions per arrancar el contenidor
# Montam les carpetes persistents
VOLUME /etc
VOLUME /srv/ftp/public
CMD ["/usr/sbin/vsftpd", "/etc/vsftpd.conf", "-g"]
#CMD ["named", "-g"]

# Exposam el port utilizat
EXPOSE 20/tcp
EXPOSE 21/tcp