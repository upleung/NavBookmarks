# NavBookmarks

NavBookmarks 是一个 **轻量级、自托管的导航书签管理器**，基于 Node.js + Express + SQLite 构建，提供简洁的前端界面与可视化后台管理。适合部署在 **VPS、NAS、家宽服务器、Docker、Hostuno、serv00、ct8** 等环境。

---

## ✨ 功能特性

- 🗂 **导航书签管理**：支持分类、排序、图标上传  
- 🧩 **后台管理面板**：默认账号 `admin` / 密码 `123456`  
- 💾 **SQLite 持久化存储**：无需额外数据库  
- 📁 **文件上传支持**：图标与封面自动保存  
- 🚀 **轻量部署**：占用资源极低，适合 NAS / 玩客云 / 小型 VPS  
- 🔧 **一键安装脚本**：支持 serv00 / ct8 / Hostuno 环境自动部署  
- 🐳 **Docker 支持**：可在任意容器环境快速运行  

---

## 📦 一键安装（serv00 / ct8 / Hostuno）

在面板中创建站点后，SSH 执行：

```bash
bash <(curl -Ls https://github.com/eooce/nav-item/releases/download/ct8-and-serv00/install.sh)
```

可选环境变量（放在脚本前，空格分隔）：

```bash
DOMAIN=yourdomain.com USER=admin PASS=123456 \
bash <(curl -Ls https://github.com/eooce/nav-item/releases/download/ct8-and-serv00/install.sh)
```

---

## 🐳 Docker 部署（推荐）

```bash
docker run -d \
  --name navbookmarks \
  -p 3000:3000 \
  -v $(pwd)/database:/app/database \
  --restart always \
  eooce/nav-item
```

访问地址：

```
http://localhost:3000
```

后台管理：

```
http://localhost:3000/admin
```

---

## 📁 项目结构

```
NavBookmarks/
├── backend/        # Node.js 后端
├── frontend/       # 前端页面
├── database/       # SQLite 数据库（nav.db）
├── uploads/        # 图标与封面文件
└── Dockerfile
```

---

## 🧠 系统需求

- Node.js 16+ 或 Docker 环境  
- 任意 Linux / NAS / VPS / 家宽服务器  
- SQLite 自动创建，无需额外配置  

资源占用（典型运行）：

- 内存：40–120MB  
- 磁盘：20–30MB  
- CPU：极低  

---

## 🌐 自定义域名（可选）

如果你使用 Hostuno / serv00 / ct8：

- 在面板绑定域名  
- 脚本自动配置站点目录  
- 可搭配 Cloudflare CDN 加速与防护  

---

## 🔒 默认后台账号

```
用户名：admin
密码：123456
```

建议安装后立即修改密码。

---

## 🛠 开发与构建

安装依赖：

```bash
npm install
```

开发模式：

```bash
npm run dev
```

构建前端：

```bash
npm run build
```

启动服务：

```bash
npm start
```

---

## 📜 许可证

MIT License

---

## 👍 致谢

本项目基于 [eooce/nav-item](https://github.com/eooce/nav-item) 改进与整理，感谢原作者的优秀开源贡献。
