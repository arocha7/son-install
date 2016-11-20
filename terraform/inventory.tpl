[all:vars]
# Environment: INTEGRATION | QUALIFICATION | DEMONSTRATION

# Network to configure access in pg_hba
network=172.31.6.0

# Netmask to configure access in pg_hba
netmask=24

[sp]
${sp_hosts}

[nfv]
${nvf_hosts}

[ns:children]
nfv

[sp4${env}:children]
sp
ns
