Role Name
=========

This a tool to deploy KUBEADM. iIt follows the [install guide](https://kubernetes.io/docs/setup/independent/create-cluster-kubeadm)

Requirements
------------

Any pre-requisites 

Role Variables
--------------

Current, the supported plugins are:
* FLANNEL
* CALICO

Dependencies
------------

* Ansible +2.7

How to use this Playbook
----------------

// Deply KUBEADM with Flannel network plugin
`$ ansible-playbook utils/deploy/kubeadm.yml -e k8s_network_plugin=FLANNEL -v`

// Deply KUBEADM with Calico network plugin
`$ ansible-playbook utils/deploy/kubeadm.yml -e k8s_network_plugin=CALICO -v`


Author Information
------------------

"Alberto Rocha, Altice Labs, arocha@ptinovacao.pt"
