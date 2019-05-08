## Open Shift 3.11 Demo 
## Duration 1-1.5 Hours 

#### System Requirement

1. 10-12 GB RAM
2. 6-8 VCPU
3. 40 GB HD

(VM, Barematel or cloud VMs)

OCP version 3.11 installation type "All in one node-server" 

[Disconnect installation Guide](https://docs.openshift.com/container-platform/3.11/install/disconnected_install.html)


[Official Inventory file guide](https://docs.openshift.com/container-platform/3.11/install/configuring_inventory_file.html)

[Pre-Installation steps](https://docs.openshift.com/container-platform/3.11/install/host_preparation.html)

***Don't go with docker storage setup for DEMO***

#### DEMO OUTLINE

1. Application Build strategies 
    
     - Docker file
       
     - Docker Image
    
     - S2I AKA Source to Image
       

2. Application Code change web hook trigger

3. Application (multi-tier) deployment Voteapp
   - HTTP as Frontend/web server
   - Mysql as backend Database
   
4. Application Template deployment 

5. Resource Quota & Auto Healing for applications high availability

6. Horizontal Pod autoscaling (HPA)

7. Application deployment with upgrade Blue-Green deployment Demo
   - Blue (version 1) to Green (version 2)
   
8. Catalogue Deployment cake/php Icon PHP

9. CICD Jenkins image promotion and application deployment 


