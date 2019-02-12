## DEMO WEBSERVER
# Base operating system image based on RHEL7 
FROM	registry.access.redhat.com/rhel7:latest


# Package installation and configuration changes
RUN 	yum install -y httpd && yum clean all -y && \
	sed -i 's/Listen 80/Listen 8080/' /etc/httpd/conf/httpd.conf && \
    	chmod -R a+rwx /run/httpd /etc/httpd/logs

# Listen on below port
EXPOSE 8080

# Always execute entry point
ENTRYPOINT	["/usr/sbin/httpd"]

# Run process in foregroud as a parameter
CMD		["-DFOREGROUND"] 
