# v8cdn
v8cdn是一款Cloudflare Partner面板程序，v8cdn非本人开发，此项目是v8cdn的前后端Docker镜像打包，感谢原作者的贡献和分享。

## v8cdn项目

* 后端：[https://github.com/aoaostar/v8cdn](https://github.com/aoaostar/v8cdn)
* 前端：[https://github.com/aoaostar/v8cdn-panel](https://github.com/aoaostar/v8cdn-panel)

## docker-compose部署

```bash
# 使用git拉取此项目
git clone https://github.com/helloxz/v8cdn.git
# 进入v8cdn目录
cd v8cdn
# 根据自己的情况修改config/config.js和config/config.yaml
# 运行
docker-compose up -d
```