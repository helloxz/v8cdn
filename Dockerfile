# 指定基础镜像
FROM debian:11-slim
# 设置工作目录
WORKDIR /data/apps/v8cdn
# 复制脚本文件
COPY *.sh /data/apps/v8cdn/
# 运行安装脚本
RUN bash /data/apps/v8cdn/install.sh
# 启动运行
CMD ["./v8cdn"]