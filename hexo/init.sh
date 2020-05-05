 ps ef | grep onlineMarkdown | grep -v grep | awk '{print $1}'|xargs kill -9
echo "启动hexo和java程序"
nohup java -jar onlineMarkdown.jar > onlineMarkdown.log 2>&1 & 
echo "java程序开启"
