#:/bin/bash
#容器启动脚本
docker run -d --dns=8.8.8.8 --name hexo -p 8888:80 -p 4000:4000 -v F:\docker\hexo_ck:/usr/src/myBlog ck/hexo
