# 使用官方 Node.js 镜像作为基础镜像
FROM node:18

# 设置容器内的工作目录
WORKDIR /app

# 复制 package.json 和 package-lock.json 文件（如果有）
COPY package*.json ./

# 安装依赖
RUN npm install

# 复制项目中所有文件
COPY . .

# 对外暴露端口（要和 index.js 中的端口一致）
EXPOSE 3000

# 启动服务
CMD ["node", "index.js"]
