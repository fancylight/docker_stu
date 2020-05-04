@echo off
REM 创建三个文件夹
set configDir= %CD%/config
set logsDir= %CD%/logs
set dataDir= %CD%/data
md config
md logs
md data
if errorlevel ==1 (exit)
REM 拉取image
::docker pull gitlab/gitlab-ce
REM 运行docker
::docker run -d --restart=always -p 4430:443 -p 8000:80 -p 2200:22 --name gitlab -v %configDir%:/etc/gitlab:rw -v %logsDir%:/var/log/gitlab:rw -v %dataDir%:/var/opt/gitlab:rw gitlab/gitlab-ce
::docker logs -f gitlab
