# 处理yum源
echo "开始处理yum源为国内镜像=------------------------"
yum clean all
yum makecache
echo "开始处理yum源为国内镜像结束=--------------------"
# 安装nodejs和jdk
echo "安装jdk8--------------------------"
yum install -y java-1.8.0-openjdk.x86_64
echo "执行nojde10脚本-------------------------"
curl --silent --location https://rpm.nodesource.com/setup_10.x | bash -
echo "yum安装nodejs10和npm--------------------"
yum install -y nodejs 
yum install -y npm
yum update openssl -y
npm config set registry https://registry.npm.taobao.org
echo "安装hexo---------------------------------"
npm install hexo-cli -g
npm install
echo "启动hexo和java程序"
nohup java -jar hexoConvert-1.0-SNAPSHOT.jar
nohup hexo s
