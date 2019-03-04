Role Name
=========

This playbook deploys a single machine Kubernetes cluster (aka, all-in-one) using KUBEADM tool. It follows the [install guide](https://kubernetes.io/docs/setup/independent/create-cluster-kubeadm)

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

// Deploy standalone K8s cluster with Flannel network plugin
`$ ansible-playbook utils/deploy/kubeadm.yml -e network_addon=FLANNEL -v`

// Deploy standalone K8s cluster with Calico network plugin
`$ ansible-playbook utils/deploy/kubeadm.yml -e network_addon=CALICO -v`


Author Information
------------------

"Alberto Rocha, Altice Labs, arocha@ptinovacao.pt"
