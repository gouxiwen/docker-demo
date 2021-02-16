# 构建镜像到基础镜像源
FROM node:10.16.0
# 镜像到工作目录设置为/usr/src/app
WORKDIR /usr/src/app
# 将本地到文件添加到镜像环境的/usr/app/目录下（.dockerignore忽略的除外）
ADD . /usr/src/app
# 安装依赖命令
RUN npm config set registry http://registry.npm.taobao.org/ && npm install
# 容器内开放给外部的端口
EXPOSE 3000
# 容器运行时容器主进程的默认启动命令和参数
CMD ["npm", "run", "build"]