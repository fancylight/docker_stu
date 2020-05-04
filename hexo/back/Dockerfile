FROM dustise/yum.centos7
MAINTAINER 15529439929@163.com
WORKDIR /usr/src/myBlog
COPY . /usr/src/myBlog
RUN mv ./CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo \
&& mv ./epel-7.repo /etc/yum.repos.d/epel-7.repo \
&& rm -f /etc/yum.repos.d/total.repo \
&& chmod 777 init.sh
EXPOSE 4000
EXPOSE 80
CMD ["/bin/bash","/usr/src/myBlog/init.sh"]