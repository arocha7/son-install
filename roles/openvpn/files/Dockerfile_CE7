FROM centos

MAINTAINER son-install@5gtango.eu

#ARG OVPN_VER
ENV OLD_OVPN_VER ${OVPN_VER:-2.3.3}
ENV OVPN_VER ${OVPN_VER:-2.4.6}

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

# INSTALL

RUN yum -y update && yum -y install openssh-server && yum -y install epel-release && yum -y install openvpn && yum clean all

# OVPN CONFIG

RUN mkdir /var/run/sshd
RUN echo 'root:tango' | chpasswd
RUN useradd -ms /bin/bash -G openvpn tango
RUN echo 'tango:t4ng0' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
RUN rm -fr /etc/ssh/ssh_host_*

# PKI CONFIG

#CMD mkdir /tmp/easyrsa
#WORKDIR /tmp/easyrsa
#ADD https://github.com/OpenVPN/easy-rsa-old/archive/${OLD_OVPN_VER}.tar.gz .
#CMD tar zxvf ${OLD_OVPN_VER}.tar.gz
#CMD mkdir -p /etc/openvpn/easy-rsa
#ADD easy-rsa-old-${OLD_OVPN_VER}/easy-rsa/2.0/ /etc/openvpn/easy-rsa

CMD chown -r tango /etc/openvpn/
USER tango

WORKDIR /
ADD server.conf /etc/openvpn/server.conf
#ADD ssh_host_rsa_key /etc/openvpn/ssh_host_rsa_key
WORKDIR /etc/ssh
CMD yes ssh_host_key | ssh-keygen -q -b 1024 -t rsa -N '' > /dev/null
CMD yes ssh_host_rsa_key | ssh-keygen -q -b 1024 -t rsa -N ''  > /dev/null
CMD yes ssh_host_dsa_key | ssh-keygen -q -b 1024 -t dsa -N '' > /dev/null
CMD yes ssh_host_ecdsa_key | ssh-keygen -q -b 521 -t ecdsa -N '' /etc/ssh/ssh_host_ecdsa_key > /dev/null

EXPOSE 1194
CMD ["/usr/sbin/openvpn", "--cd /etc/openvpn/", "--config server.conf"]

EXPOSE 22
ENTRYPOINT /usr/sbin/sshd -D


