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
