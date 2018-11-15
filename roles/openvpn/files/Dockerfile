FROM ubuntu

MAINTAINER son-install@5gtango.eu

ARG HOME_DIR
ENV HOME=$HOME_DIR

# 1. INSTALL

RUN apt-get update -y && apt-get install -y openvpn easy-rsa && apt-get -y clean 

RUN useradd -c "5G TANGO User" -m -p t4ng0 -s /bin/bash tango

# 2. CONFIG CA 

RUN make-cadir $HOME/openvpn-ca
USER tango
ADD vars $HOME/openvpn-ca
WORKDIR $HOME/openvpn-ca
CMD source vars
CMD ./clean-all
CMD cp openssl-1.0.0.cnf openssl.cnf
CMD ./build-ca

#EXPOSE 1194
#CMD ["/usr/sbin/openvpn", "--cd /etc/openvpn/", "--config server.conf"]

#EXPOSE 22
#ENTRYPOINT /usr/sbin/sshd -D


