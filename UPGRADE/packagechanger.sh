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
