# 阶段 1：前端构建
FROM node:20-alpine3.20 AS frontend-builder

WORKDIR /app

COPY web/package*.json ./
RUN npm install

COPY web/ ./
RUN npm run build

# 阶段 2：生产环境
FROM node:20-alpine3.20 AS production

WORKDIR /app

# 安装 SQLite 及 ARMv7 编译可能需要的工具链
RUN apk add --no-cache sqlite python3 make g++ sqlite-dev

# 创建必要的目录
RUN mkdir -p uploads database web/dist

COPY package*.json ./

# 仅安装生产环境依赖，避免装入冗余的 devDependencies
RUN npm install --omit=dev

# 依赖安装完成后，清理掉用于编译的工具链，大幅减小镜像体积
RUN apk del python3 make g++ sqlite-dev && \
    rm -rf /var/cache/apk/*

COPY app.js config.js db.js ./
COPY routes/ ./routes/

# 从构建阶段复制前端产物
COPY --from=frontend-builder /app/dist ./web/dist

ENV NODE_ENV=production
EXPOSE 3000/tcp

CMD ["npm", "start"]