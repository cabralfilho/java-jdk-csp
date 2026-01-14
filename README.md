# Oracle JRE 8u451 + CardServProxy (CSP) Installer

<p align="center">
  <img src="https://img.shields.io/badge/Oracle-JRE%208u451-red?style=for-the-badge&logo=java&logoColor=white" alt="Java 8u451" />
  <img src="https://img.shields.io/badge/Ubuntu-20.04%20%7C%2022.04%20%7C%2024.04-E95420?style=for-the-badge&logo=ubuntu&logoColor=white" alt="Ubuntu" />
  <img src="https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge&logo=opensourceinitiative&logoColor=white" alt="MIT License" />
  <br><br>
  <h1>🔥 Oracle JRE 8u451 + CardServProxy (CSP) Installer 🔥</h1>
  <p><strong>One-click legacy setup for CSP on Ubuntu servers</strong></p>
  <p>Created with ❤️ by <strong>Fabiano</strong> (@Fabiano) • January 2026</p>
</p>

---

### 🌟 What is this?

A powerful, idempotent Bash script that installs **Oracle Java Runtime Environment 8 Update 451** (HotSpot VM) and configures **CardServProxy (CSP)** automatically on Ubuntu servers.

This script uses the official reference repository:  
**https://github.com/cabralfilho/java-jdk-csp**  
(for cloning the latest CSP files, configs and `csp.tar.gz` when available).

### ✨ Features

- 🛡️ Idempotent installation — safe to run multiple times
- ⚡ Installs Oracle JRE 8u451 from file in `/tmp`
- 🔧 Configures `update-alternatives` + permanent `JAVA_HOME`
- 📦 Clones/updates the reference repo:  
  https://github.com/cabralfilho/java-jdk-csp
- 📂 Extracts `csp.tar.gz` (if present in the repository)
- 🚀 Creates & enables **systemd service** for CSP
- 🛠️ Built-in guidance for fixing legacy CSP errors

### 📋 Prerequisites

- Ubuntu 20.04 / 22.04 / 24.04 (64-bit)
- Root/sudo access
- File `jre-8u451-linux-x64.tar.gz` in `/tmp`  
  → Download from: [Oracle Java Archive](https://www.oracle.com/java/technologies/javase/javase8u211-later-archive-downloads.html)  
  → Look for "Java SE Runtime Environment 8u451 – Linux x64 Compressed Archive"
- Internet connection (for git clone)

### 🚀 Quick Start

1. Place the JRE file:
   ```bash
   mv ~/Downloads/jre-8u451-linux-x64.tar.gz /tmp/
