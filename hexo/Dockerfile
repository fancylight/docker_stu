FROM dustise/yum.centos7
MAINTAINER 15529439929@163.com
WORKDIR /usr/src/myBlog
COPY . /usr/src/myBlog
ENV NODEJS_HOME=/usr/src/myBlog/nodejs
ENV PATH=$PATH:$NODEJS_HOME/bin
ENV NODEJS_PATH=$NODEJS_HOME/lib/node_modules
RUN echo "安装nodejs-------------------" \
&& tar -xf ./node-v12.16.3-linux-x64.tar.xz -C ./ \
&& mv ./node-v12.16.3-linux-x64 ./nodejs \
&& echo export NODEJS_HOME=/usr/src/myBlog/nodejs >> /etc/profile \
&& ln -s /usr/src/myBlog/nodejs/bin/node /usr/local/bin/node \
&& ln -s /usr/src/myBlog/nodejs/bin/npm /usr/local/bin/npm \
&& node --version \
&& npm --version \
&& echo $PATH \
&& echo "设置国内源" \
&& mv ./CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo \
&& mv ./epel-7.repo /etc/yum.repos.d/epel-7.repo \
&& rm -f /etc/yum.repos.d/total.repo \
&& yum clean all \
&& yum makecache \
&& echo "安装jdk8--------------------------" \
&& yum install -y java-1.8.0-openjdk.x86_64 \
&& echo "安装hexo---------------------------------" \
&& yum update openssl -y \
&& npm config set registry https://registry.npm.taobao.org \
&& npm install hexo-cli -g \
&& npm install \
&& echo "初始脚本权限" \
&& chmod 777 init.sh
EXPOSE 4000
EXPOSE 80