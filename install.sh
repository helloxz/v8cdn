#!/bin/bash

# 申明版本变量
V8CDN_VERSION=1.0.1
# 申明前端版本变量
V8CDN_FRONT_VERSION=1.0.1

apt-get update
apt-get install -y wget


# 下载资源文件
download() {
    url="https://github.com/aoaostar/v8cdn/releases/download/v${V8CDN_VERSION}/v8cdn_v${V8CDN_FRONT_VERSION}_linux_amd64.tar.gz"
    # 使用wget下载到指定目录，并且指定保存的文件名
    wget -O v8cdn.tar.gz $url
    # 解压
    tar -zxvf v8cdn.tar.gz
    # 移动文件
    mv linux_amd64/v8cdn ./
    # 删除文件夹
    rm -rf linux_amd64
    front_url="https://github.com/aoaostar/v8cdn-panel/releases/download/v${V8CDN_FRONT_VERSION}/refs.tags.v${V8CDN_FRONT_VERSION}.tar.gz"
    # 使用wget下载到指定目录，并且指定保存的文件名
    wget -O v8cdn-front.tar.gz $front_url
    # 解压
    tar -zxvf v8cdn-front.tar.gz
    # 删除文件
    rm -rf *.tar.gz
    # 添加执行权限
    chmod +x ./v8cdn
    echo "------------------------------------------------"
    echo "v8cdn install success."
    echo "------------------------------------------------"
}

# 清理文件
clean() {
    apt-get remove -y wget
    rm -rf /var/lib/apt/lists/*
}

download && clean