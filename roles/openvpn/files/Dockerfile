FROM ubuntu

MAINTAINER son-install@5gtango.eu

ENV HOME=/home/tango
ENV CA_SRV=tng0vpn

# 1. INSTALL

RUN apt-get update -y && \
    apt-get install -y openvpn easy-rsa && \
    apt-get install -y sudo && \
    apt-get -y clean 

RUN groupadd -r openvpn && \
    useradd -c "5G TANGO User" -m -g openvpn -G sudo -s /bin/bash tango && \
    echo "tango:t4ng0" | chpasswd && \
    echo 'tango ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers.d/95-passwordless

# 2. CA Setup 

USER tango
RUN make-cadir $HOME/openvpn-ca
ADD vars $HOME/openvpn-ca
WORKDIR $HOME/openvpn-ca
CMD source ./vars
RUN cp openssl-1.0.0.cnf openssl.cnf && \
    ./clean-all && \
    mkdir -p keys && \
    DEBIAN_FRONTEND=noninteractive ./build-ca && \
    DEBIAN_FRONTEND=noninteractive ./build-key-server $CA_SRV && \
    ./build-dh && \
    openvpn --genkey --secret keys/ta.key && \
    ./build-key tngclnt

# 3. VPN SRV CONFIG

WORKDIR $HOME/openvpn-ca/keys


#EXPOSE 1194
#CMD ["/usr/sbin/openvpn", "--cd /etc/openvpn/", "--config server.conf"]

#EXPOSE 22
#ENTRYPOINT /usr/sbin/sshd -D


