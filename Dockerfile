# 指定基础镜像
FROM alpine:3.18
# 设置工作目录
WORKDIR /data/apps/v8cdn
# 复制脚本文件
COPY *.sh /data/apps/v8cdn/
# 运行安装脚本
RUN sh /data/apps/v8cdn/install.sh
# 启动运行
CMD ["/data/apps/v8cdn/v8cdn"]