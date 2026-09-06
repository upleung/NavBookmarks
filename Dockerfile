# 第一阶段：前端构建
FROM node:20-alpine3.20 AS frontend-builder

WORKDIR /app

COPY web/package*.json ./
RUN npm install

COPY web/ ./
RUN npm run build

# 第二阶段：生产环境
FROM node:20-alpine3.20 AS production

WORKDIR /app

# 关键修复：追加 py3-setuptools 以解决 Python 3.12 移除 distutils 导致 node-gyp 编译 sqlite3 报错的问题
RUN apk add --no-cache \
    sqlite \
    python3 \
    python3-dev \
    make \
    g++ \
    sqlite-dev \
    py3-setuptools

# 创建必要的目录
RUN mkdir -p uploads database web/dist

COPY package*.json ./

# 仅安装生产依赖，触发 sqlite3 在 ARMv7 下的正确编译
RUN npm install --omit=dev

# 编译完成后，清理掉冗余的构建工具链，大幅减小镜像体积
RUN apk del python3 python3-dev make g++ sqlite-dev py3-setuptools && \
    rm -rf /var/cache/apk/*

COPY app.js config.js db.js ./
COPY routes/ ./routes/

COPY --from=frontend-builder /app/dist ./web/dist

ENV NODE_ENV=production
EXPOSE 3000/tcp

CMD ["npm", "start"]