FROM centos:7
RUN yum -y install epel-release
RUN yum -y update
RUN yum -y install nginx
#ENTRYPOINT ["/usr/sbin/nginx","-g", "daemon off;"]
ADD index.html /usr/share/nginx/html/index.html
EXPOSE 80/TCP
CMD ["nginx","-g daemon off;"]