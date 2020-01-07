# 构建镜像到基础镜像源
FROM node:10.16.0
# 将本地到文件添加到镜像的/app/目录下
ADD ./ /app/
# 镜像到工作目录设置为/app/（.dockerignore忽略的除外）
WORKDIR /app
# 安装依赖命令
RUN npm install
# 容器内开放给外部的端口
EXPOSE 3000
# 容器运行时容器主进程到默认启动命令和参数
CMD ["npm", "run", "build"]