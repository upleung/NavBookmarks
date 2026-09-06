[🇺🇸 English](https://github.com/upleung/NavBookmarks/edit/main/README.md) | [🇨🇳 中文](https://github.com/upleung/NavBookmarks/blob/main/src/doc/README-Hans.md)

# NavBookmarks - Web Bookmark Navigation Page

NavBookmarks is a **lightweight, self-hosted navigation bookmark manager** built with Node.js + Express + SQLite, providing a clean frontend interface and visual backend management. It is suitable for deployment on **VPS, NAS, Home Broadband Servers, Docker, Hostuno, serv00, ct8**, and other environments.

nav-links/ Nav-URL / Nav-iTek / Nav-ITK / Nav-Web / Nav-X / Nav-inet / Nav-McG / Nav-iter

---

## ✨ Features

* 🗂 **Navigation Bookmark Management**: Supports categorization, sorting, and icon uploading.
* 🧩 **Backend Management Panel**: Default account `admin` / password `123456`.
* 💾 **SQLite Persistent Storage**: No additional database required.
* 📁 **File Upload Support**: Icons and covers are saved automatically.
* 🚀 **Lightweight Deployment**: Extremely low resource usage, suitable for NAS / OneThing Cloud / small VPS.
* 🔧 **One-Click Installation Script**: Supports automatic deployment in serv00 / ct8 / Hostuno environments.
* 🐳 **Docker Support**: Can be quickly run in any container environment.

---

## 📦 One-Click Installation (serv00 / ct8 / Hostuno)

After creating a site in the panel, execute via SSH:

```bash
bash <(curl -Ls https://github.com/upleung/NavBookmarks/releases/download/ct8-and-serv00/install.sh)

```



Optional environment variables (placed before the script, space-separated):

```bash
DOMAIN=yourdomain.com USER=admin PASS=123456 \
bash <(curl -Ls https://github.com/upleung/NavBookmarks/releases/download/ct8-and-serv00/install.sh)

```



---

## 🐳 Docker Deployment (Recommended)

```bash
docker run -d \
  --name navbookmarks \
  -p 3000:3000 \
  -v $(pwd)/database:/app/database \
  --restart always \
  upleung/NavBookmarks

```



Access address:

```
http://localhost:3000

```



Backend management:

```
http://localhost:3000/admin

```



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



---

## 🧠 System Requirements

* Node.js 16+ or Docker environment.
* Any Linux / NAS / VPS / Home Broadband Server.
* SQLite is created automatically, no extra configuration required.

Resource usage (typical operation):

* Memory: 40–120MB.
* Disk: 20–30MB.
* CPU: Extremely low.

---

## 🌐 Custom Domain (Optional)

If you use Hostuno / serv00 / ct8:

* Bind the domain in the panel.
* The script automatically configures the site directory.
* Can be paired with Cloudflare CDN for acceleration and protection.

---

## 🔒 Default Backend Account

```
Username: admin
Password: 123456

```



It is recommended to change the password immediately after installation.

---

## 🛠 Development & Build

Install dependencies:

```bash
npm install

```



Development mode:

```bash
npm run dev

```



Build frontend:

```bash
npm run build

```



Start service:

```bash
npm start

```



---

## 📜 License

MIT License

---

## 👍 Acknowledgements

<<<<<<< HEAD
This project is improved and organized based on [upleung/NavBookmarks](https://www.google.com/search?q=https://github.com/upleung/NavBookmarks). Thanks to the original author for their excellent open-source contribution.
=======
This project is improved and organized based on [eooce/nav-item](https://www.google.com/search?q=https://github.com/eooce/nav-item)[cite: 1]. Thanks to the original author for their excellent open-source contribution[cite: 1].

>>>>>>> 6b0635bb41845c205b9d0690f454c38110965881