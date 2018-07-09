Role Name
=========

QUAGGA is used to provide routing services on linux platform. It is built of several plugins for different istatic and dynamics protocols:
* Open Shortest Path First (OSPF), 
* Routing Information Protocol (RIP),
* Border Gateway Protocol (BGP),
* Intermediate System to Intermediate System (IS-IS) 
* Multiprotocol Label Switching (MPLS). 
It provides virtual terminal or CLI (vty/vtysh) for the protocols configuration.

Configuration files goes here:
```
/etc/quagga/*.conf 
```

To manage Quagga:
```
$ sudo systemctl [start|stop|restart|status] quagga
```
or:
```
/etc/init.d/quagga [start|stop|restart|status]
```

To access each deamon, just Telnet it sport:
```
zebra: 2601
ripd: 2602
ripng: 2603
ospfd: 2604
bgpd: 2605
ospf6d: 2606
```

To select witch daemons to start:
```
vim /etc/quagga/daemons
```


Requirements
------------

For Debian based distros, check dependencies with:
```
$ sudo apt-cache depends quagga
```


Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
