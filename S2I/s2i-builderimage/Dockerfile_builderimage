
# apachehttp
FROM centos:7

# TODO: Put the maintainer name in the image metadata
MAINTAINER giriraj_789@hotmail.com

# TODO: Rename the builder environment variable to inform users about application you provide them
ENV apache 1.0

# TODO: Set labels used in OpenShift to describe the builder image
LABEL  io.k8s.description="Platform for building apache" \
       io.k8s.display-name="apaches2ibuilder" \
       io.openshift.expose-services="8080:http" \
       io.openshift.tags="builder,apache" \
       io.openshift.s2i.scripts-url=image:///usr/local/s2i/

# TODO: Install required packages here:
RUN yum install -y httpd && \
    yum clean all -y && \
    sed -i 's/Listen 80/Listen 8080/' /etc/httpd/conf/httpd.conf && \
    chown -R 1001:1001 /etc/httpd/ && \
    chmod -R a+rwx /run/httpd /etc/httpd/logs && \
    chmod -R a+rwx  /var/www/html && \
    chown -R 1001:1001 /etc/httpd/


# TODO: Copy the S2I scripts to /usr/libexec/s2i, since openshift/base-centos7 image sets io.openshift.s2i.scripts-url
COPY .s2i/bin/* /usr/local/s2i/

# TODO: Drop the root user and make the content of /opt/app-root owned by user 1001
RUN chown -R 1001:1001 /usr/local/s2i/

# This default user is created in the openshift/base-centos7 image
USER 1001

# TODO: Set the default port for applications built using this image
EXPOSE 8080

# TODO: Set the default CMD for the image
CMD ["usage"]
