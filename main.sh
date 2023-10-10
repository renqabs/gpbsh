# rm -rf go-proxy-bingai* #移除＃以升级版本
if [ ! -f "go-proxy-bingai" ];then
  echo Replit一键部署Go-Proxy-BingAI
  echo By The 一只鬆
  echo 仓库开源地址：https://github.com/yzsong06/Replit-Go-Proxy-BingAi/
  curl -L https://github.com/Harry-zklcdc/go-proxy-bingai/releases/latest/download/go-proxy-bingai-linux-amd64.tar.gz -o bingai.tar.gz
  tar -zxvf bingai.tar.gz
  rm -f bingai.tar.gz
  echo 搭建完成，单击Run以启动项目
fi
./go-proxy-bingai
