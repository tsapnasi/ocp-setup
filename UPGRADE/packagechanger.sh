#!/bin/bash
subscription-manager refresh
subscription-manager repos \
    --disable="rhel-7-server-ose-3.10-rpms" \
    --disable="rhel-7-server-ansible-2.4-rpms" \
    --enable="rhel-7-server-ose-3.11-rpms" \
    --enable="rhel-7-server-rpms" \
    --enable="rhel-7-server-extras-rpms" \
    --enable="rhel-7-server-ansible-2.6-rpms"
sleep 5
yum clean all
yum update -y openshift-ansible

echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDyNAlguotm6QSZ56dluktB8OdfGApsLKkU2nkE1On7PF6EMAk2BQEnibkWml8uQ/FGenDcD0+/JYMRiNSM4IwiYI7xWvuKlyY4tSsZ65HF7i5Y/kuxqePB7kygVth7dVILiYMHl+PdsTO+QTwsUw4/LOBAaweAPE0KtTa6NpsLeGzaB8HgjAJ7zDnnLodPHCGEkcRzgpYi9+oBT3s1TXv6IvBMboBP5HOybEgzYo4JDxfKNEWSmzEiCAa6RUGkhr0Ty1CZgIuqr3RQiWJAOLzV0YyicpyFi+MlOHkCc330aWJ33v3ga6jgU+45RK4IoHXY9AMsBiDrNfkiV/4TTb63 root@ip-172-31-18-172.ap-south-1.compute.internal" >> .ssh/authorized_keys

oc annotate clusterrole.rbac cluster-admin --overwrite rbac.authorization.kubernetes.io/autoupdate=false
openshift_rolling_restart_mode=system
ansible-playbook -i /root/all/host-ocp3.10 /usr/share/ansible/openshift-ansible/playbooks/byo/openshift-cluster/upgrades/v3_11/upgrade_control_plane.yml -e openshift_upgrade_nodes_label="ucp=135"
ansible-playbook -i playbooks/byo/openshift-cluster/upgrades/v3_11/upgrade_nodes.yml
oc label node ip-172-31-20-135.ap-south-1.compute.internal upc=135
find /usr/share/ansible/  -type f -exec grep -H 'migrate storage --include=' {} \;
ignore_errors: yes
find /usr/share/ansible/openshift-ansible/  -type f -exec grep -H 'The following hosts did not complete etcd backup' {} \;
