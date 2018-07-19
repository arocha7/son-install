#
# AUTH
os_username   = "sonata.dem"
os_tenantname = "sonata.dem"
os_password   = "**********"
os_auth_url   = "http://10.31.1.3:5000/v2.0"

# VM INSTANCE
vm_name     = "vm"
os_img_id   = "7129fb44-a239-458c-a45f-f93342ed458c"  # Ub14 trusty cld img
#os_img_id  = "fed16665-bed0-46f8-8a95-42801ca9753d"  # Ub16 xenial cld img
#os_img_id  = "b7ae5d8c-8c65-4411-8251-1985d714c2a7"  # Cen7 cld img
os_flv_id   = "2"  # '1'-tiny '2'-m1.small '3'-m1.medium '4'-m1.large '5'-
#os_region"  = "" 
os_sec_grp = "son-demo-secgrp" 
os_key_pair = "son-ift-ptin" 

# NETW
internal_network_id = "cffedbd8-e2a5-4cc3-92f9-0ce5259e4d31" 
internal_network_name = "son-demo-netw" 

# FLOATING IP
os_fip_pool = "admin_floating_net" 

# DISTRO
distro = "trusty"  # distros = "trusty | xenial | centos7"

# APP LAYERs
#layer = "fe"  # layers = "fe | midtier | be"

# ENVIRONMENTS
env = "demo"  # environ = "int | qual | demo"

