# DEMOCP
OCP install and Demo guide 
#### System Requirement
1. 10-12 GB RAM
2. 6-8 VCPU
3. 40 GB HD
(VM, Barematel or cloud VMs)
#### OCP version 3.11 installation type "All in one node" 
#### Offical RPMs and IMAGEs requirement for disconnect install "https://docs.openshift.com/container-platform/3.11/install/disconnected_install.html"

#### Preinstallation steps (Don't go with docker storage setup for DEMO)
https://docs.openshift.com/container-platform/3.11/install/host_preparation.html

#### Sample files
1 "ocp-install_hostfile" (Installation File for single node) 
##### ansible-playbook -i ocp-install_hostfile 
#### Official Inventory file "https://docs.openshift.com/container-platform/3.11/install/configuring_inventory_file.html"
2. Application Demo 
a. Single web server application based on HTTP server
   - Script file "webserver.sh" Change permission to executable 
   - Output docker image "webserver:v1" 
   - OCP catalog webserver 
   
b. 2 Tier application webserver(HTTP), DB server (MariaDB)
   cript file "webserver.sh" Change permission to executable 
   - Output docker image "webserver:v1" 
   - OCP catalog webserver 
                                
