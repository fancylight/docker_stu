docker volume create gitlab-logs
docker volume create gitlab-data 
docker run --detach --name gitlab --restart always --hostname gitlab.example.com  --publish 4443:443 --publish 4480:80 --publish 8222:22 --volume F:\docker\gitlab\config:/etc/gitlab  --volume gitlab-logs:/var/log/gitlab --volume gitlab-data:/var/opt/gitlab gitlab/gitlab-ce
pause	
