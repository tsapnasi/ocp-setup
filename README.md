# DEMOCP
OCP install and Demo guide 
#### System Requirement
1. 10-12 GB RAM
2. 6-8 VCPU
3. 40 GB HD
(VM, Barematel or cloud VMs)
#### OCP version 3.11 installation type "All in one node" 
#### Offical RPMs and IMAGEs requirement for disconnect install "https://docs.openshift.com/container-platform/3.11/install/disconnected_install.html"
#### Official Inventory file "https://docs.openshift.com/container-platform/3.11/install/configuring_inventory_file.html"

#### Preinstallation steps (Don't go with docker storage setup for DEMO)
https://docs.openshift.com/container-platform/3.11/install/host_preparation.html

#### DEMO Activites and Sample files
1. OCP single node install 
   - Script: single-node-ocp-3.11.sh
2. Application Demo 
a. Single web server application based on HTTP server
   - Script file "webserver.sh" 
   - Output docker image "webserver:v1" 
   - OCP catalog webserver 
   
b. Two-Tier application webserver front end (HTTP) + DB server (MariaDB) backend
   - Script file "2-tier.sh" 
   - Output docker image "webserver:frontend" and "dbserver:backend"
   - OCP catalog frontend & Backend 
                                
3. Resource Quota 
4. Horizontal Pod autoscaling 
5. Application upgrade Blue-Green deployment 
6. Source-2-Image
