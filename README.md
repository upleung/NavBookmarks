[🇺🇸 English](https://www.google.com/search?q=README.md) | [🇨🇳 中文](https://www.google.com/search?q=/src/doc/README-BAK.md)

# NavBookmarks - Web Bookmark Navigation Page

NavBookmarks is a **lightweight, self-hosted navigation bookmark manager** built with Node.js + Express + SQLite, providing a clean frontend interface and visual backend management[cite: 1]. It is suitable for deployment on **VPS, NAS, Home Broadband Servers, Docker, Hostuno, serv00, ct8**, and other environments[cite: 1].

nav-links/ Nav-URL / Nav-iTek / Nav-ITK / Nav-Web / Nav-X / Nav-inet / Nav-McG / Nav-iter[cite: 1]

---

## ✨ Features

* 🗂 **Navigation Bookmark Management**: Supports categorization, sorting, and icon uploading[cite: 1].
* 🧩 **Backend Management Panel**: Default account `admin` / password `123456`[cite: 1].
* 💾 **SQLite Persistent Storage**: No additional database required[cite: 1].
* 📁 **File Upload Support**: Icons and covers are saved automatically[cite: 1].
* 🚀 **Lightweight Deployment**: Extremely low resource usage, suitable for NAS / OneThing Cloud / small VPS[cite: 1].
* 🔧 **One-Click Installation Script**: Supports automatic deployment in serv00 / ct8 / Hostuno environments[cite: 1].
* 🐳 **Docker Support**: Can be quickly run in any container environment[cite: 1].

---

## 📦 One-Click Installation (serv00 / ct8 / Hostuno)

After creating a site in the panel, execute via SSH[cite: 1]:

```bash
bash <(curl -Ls https://github.com/eooce/nav-item/releases/download/ct8-and-serv00/install.sh)

```

[cite: 1]

Optional environment variables (placed before the script, space-separated)[cite: 1]:

```bash
DOMAIN=yourdomain.com USER=admin PASS=123456 \
bash <(curl -Ls https://github.com/eooce/nav-item/releases/download/ct8-and-serv00/install.sh)

```

[cite: 1]

---

## 🐳 Docker Deployment (Recommended)

```bash
docker run -d \
  --name navbookmarks \
  -p 3000:3000 \
  -v $(pwd)/database:/app/database \
  --restart always \
  eooce/nav-item

```

[cite: 1]

Access address[cite: 1]:

```
http://localhost:3000

```

[cite: 1]

Backend management[cite: 1]:

```
http://localhost:3000/admin

```

[cite: 1]

---

## 📁 Project Structure

```
NavBookmarks/
├── backend/        # Node.js backend
├── frontend/       # Frontend pages
├── database/       # SQLite database (nav.db)
├── uploads/        # Icon and cover files
└── Dockerfile

```

[cite: 1]

---

## 🧠 System Requirements

* Node.js 16+ or Docker environment[cite: 1].
* Any Linux / NAS / VPS / Home Broadband Server[cite: 1].
* SQLite is created automatically, no extra configuration required[cite: 1].

Resource usage (typical operation)[cite: 1]:

* Memory: 40–120MB[cite: 1].
* Disk: 20–30MB[cite: 1].
* CPU: Extremely low[cite: 1].

---

## 🌐 Custom Domain (Optional)

If you use Hostuno / serv00 / ct8[cite: 1]:

* Bind the domain in the panel[cite: 1].
* The script automatically configures the site directory[cite: 1].
* Can be paired with Cloudflare CDN for acceleration and protection[cite: 1].

---

## 🔒 Default Backend Account

```
Username: admin
Password: 123456

```

[cite: 1]

It is recommended to change the password immediately after installation[cite: 1].

---

## 🛠 Development & Build

Install dependencies[cite: 1]:

```bash
npm install

```

[cite: 1]

Development mode[cite: 1]:

```bash
npm run dev

```

[cite: 1]

Build frontend[cite: 1]:

```bash
npm run build

```

[cite: 1]

Start service[cite: 1]:

```bash
npm start

```

[cite: 1]

---

## 📜 License

MIT License[cite: 1]

---

## 👍 Acknowledgements

This project is improved and organized based on [eooce/nav-item](https://www.google.com/search?q=https://github.com/eooce/nav-item)[cite: 1]. Thanks to the original author for their excellent open-source contribution[cite: 1].