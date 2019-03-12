## Open Shift 3.11 Demo 

#### System Requirement
1. 10-12 GB RAM
2. 6-8 VCPU
3. 40 GB HD
(VM, Barematel or cloud VMs)

OCP version 3.11 installation type "All in one node" 

[Disconnect installation Guide](https://docs.openshift.com/container-platform/3.11/install/disconnected_install.html)


[Official Inventory file guide](https://docs.openshift.com/container-platform/3.11/install/configuring_inventory_file.html)

[Pre-Installation steps](https://docs.openshift.com/container-platform/3.11/install/host_preparation.html)
***Don't go with docker storage setup for DEMO***

#### DEMO Activites and Sample files
1. Application Build strategies 
   - Docker Strategy 
     - Docker file
       CLI Demo - 
           - Create project $ oc new-project webfile
           - oc new-app https://github.com/learnbyseven/apachewebserver.git --allow-missing-images
           - oc expose svc/apachewebserver
    
     - Docker Image
       GUI Demo - 
           - Create project $ oc new-project webimage
           - Deploy from Image and use Air route Image Stream in Openshift Project
           - Route airoute.cloudapps.3.8.96.43.nip.io
           
     - S2I AKA Source to Image
       GUI Demo - 
           - Create project $ oc new-project s2i-demo
           - oc new-app openshift/builderimage:s2i~http://192.168.1.30:10080/giriraj/s2i.git --strategy=source --allow-missing-images


2. Application Demo 
   - Webserver
   - Webserver with Database
3. Resource Quota for applications 
4. Horizontal Pod autoscaling
5. Application upgrade Blue-Green deployment
   - Application version upgrade A to B 
6. Source-2-Image

