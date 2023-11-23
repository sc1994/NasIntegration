# Nas Integration 
> 这是一个集成方案，使用各式各样的docker镜像实现一个相对完整的Nas相关的功能
- 必备功能
    - 科学上网工具
    - DDNS（可选）
    - 下载器
    - 多客户端文件同步到nas
- 管理工具
    - 文件管理
    - docker gui 管理
- 流媒体
    - 磁力检索API
    - 电影数据库
    - 电视剧数据库
    - 多端视频流媒体服务
    - 字幕下载
- 监控
    - 服务硬件监控
- 其他
    - 网盘管理
    - 相册

## 关于.env文件如何使用与修改
1. 权限，关注以下代码，修改为你的用户id和组id
```
# 使用 id $user 命令查看
ROOT_PUID=0
ROOT_PGID=0
USUAL_PUID=1000
USUAL_PGID=1000
```
2. 关于目录，关注以下代码，修改为你的目录。（或者不改变这里的目录而是在你的机器上完整的创建这里面提到的目录）
```
# 根目录
ROOT=/wd
# docker 卷目录(持久化)
VOLUME=/wd/docker/vols
# docker 卷目录(配置)
CONFIGS=/wd/docker/configs
# 资源目录
MEDIA_MOVIES=/wd/vola/media/movies
MEDIA_TV=/wd/volb/media/tv
MEDIA_ANIME=/wd/volb/media/anime
# 下载目录
DOWNLOADS=/wd/download
# 远程网盘
WEBDAV=/wd/webdav
```
3. 宿主机地址，请使用内网地址，不然可能将不能暴露的服务暴露出去
```
LOCALHOST=192.168.31.14
```
4. 关于密码，关注以下代码，修改为你的密码（使用关键字 `htpasswd 生成密码` 在互联网检索）因为每个软件的认证方式不一致，这里密码只有 http://localhost:8000服务使用，其他平台的密码需要在各自登录后输入
```
HTPASSWD=admin:$ap
```
4.1 密码：photopris软件
```
photoprism_PASSWORD=xxxx
```
4.2 密码：aria2软件
```
aria2_SECRET=xxxx
```
5. 除上面的内容，其他内容应该不要修改

## 使用教程
1. 依赖 docker 以及 docker compose
2. 下载项目
3. 根据 .env 文件需要的目录在机器上创建对应目录（或者自行修改文件，是其和你的目录匹配上）
4. 关注下 config 目录下的配置文件，将此目录下的配置结构复制到机器对应的配置文件中
5. 运行 ./start_all_services.sh

## 服务列表（没有修改端口配置的情况下）
- 电影数据库：http://localhost:7878
- 电视剧数据库：http://localhost:8989
- 多端视频流媒体服务：http://localhost:8086
- 字幕下载：http://localhost:19035
    - 备用：http://localhost:8990
- 磁力检索API：http://localhost:9117
- 下载器：http://localhost:7000
- 网盘管理：http://localhost:5244
- 文件管理：http://localhost:7500
- docker gui：//localhost:9000
- 相册：http://localhost:12342
- 服务硬件监控：http://localhost:8000
- 数据同步：http://localhost:28384

> 到此如果服务都顺利启动，那么就是配置这些内容

## 服务配置
这一部分的内容其实非常多。建议根据 docker image name 找到对应的官方网站，一般都会有详细的配置教程。如果有时间，会列出一些自己配置的一些心得。

## 其他
此项目是个人使用的，所以可能会有一些个人的习惯，如果你有什么建议或者想法，欢迎提出来，我会考虑加入到这个项目中来。








