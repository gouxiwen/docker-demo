# docker-demo
docker学习demo
# 创建docker镜像方法（电脑上先安装docker）
## 1.在根目录下创建Dockerfile和.dockerignore文件
Dockerfile为配置文件

.dockerignore为忽略docker要打包的文件
## 2.执行命令docker build -t myimage .
## 3.查看本地镜像docker images
## 4.利用镜像创建容器并运行docker run -p 3000:3000 -d mongo
