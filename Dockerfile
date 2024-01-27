FROM alpine

# 设置工作目录
WORKDIR /workspace/app

RUN apk add --no-cache curl wget && \
    curl -L https://github.com/Harry-zklcdc/go-proxy-bingai/releases/latest/download/go-proxy-bingai-linux-amd64.tar.gz -o go-proxy-bingai-linux-amd64.tar.gz && \
    tar -zxvf go-proxy-bingai-linux-amd64.tar.gz && \
    chmod +x go-proxy-bingai

# 设置环境变量——Cookies"_U"，此处为随机字符
ENV Go_Proxy_BingAI_USER_TOKEN_1="kJs8hD92ncMzLaoQWY234ashjhjktX5rG6bE3fZ4iO"

# 暴露8080端口
EXPOSE 8080

# 容器启动时运行的命令
CMD ["/workspace/app/go-proxy-bingai"]
