@echo off
:: 创建文件
set nexusDir= %CD%/nexus-data
md nexus-data
::拉取镜像
docker pull sonatype/nexus3
::docker 启动
docker run -d --name nexus3 --restart=always -p 8088:8088 -p 8081:8081 -p 5000:5000 -v %nexusDir%:/nexus-data sonatype/nexus3
pause