<h1 align="center">🧅 OnionSSH</h1>

<p align="center"><strong>Anonymous SSH tunneling over the Tor network (Windows only)</strong></p>

<p align="center">
  <img src="https://img.shields.io/badge/Platform-Windows-0078D6?style=flat-square&logo=windows&logoColor=white" />
  <img src="https://img.shields.io/badge/Network-Tor%20Enabled-7E4798?style=flat-square&logo=tor-project&logoColor=white" />
  <img src="https://img.shields.io/badge/Proxy-SOCKS5-blue?style=flat-square" />
  <img src="https://img.shields.io/badge/SSH-Anonymized-success?style=flat-square" />
</p>

---

<h3>🗂️ About</h3>

OnionSSH is a simple Windows batch script that routes SSH connections over the Tor network using `ncat` as a SOCKS5 proxy handler.  
It allows anonymizing SSH traffic by passing it through the Tor network.

---

<details>
  <summary><strong>📦 Requirements</strong></summary>

- <strong>Tor Browser</strong> (to provide the `tor.exe` SOCKS5 proxy)  
- <strong>Nmap</strong> (for `ncat.exe`, which proxies SSH)
- A working `ssh.exe` in your PATH (available via Git Bash, WSL, or OpenSSH)

</details>

---

<details>
  <summary><strong>⚙️ Installation</strong></summary>

1. Install Tor Browser:  
   https://www.torproject.org/download/

2. Locate `tor.exe` inside:  
   `Tor Browser/Browser/TorBrowser/Tor/tor.exe`

3. To easily start Tor, create a shortcut on your Desktop pointing to `tor.exe`:  
   - Right-click `tor.exe` → **Send to** → **Desktop (create shortcut)**  
   - Double-click this shortcut before running OnionSSH to start the SOCKS5 proxy.

4. Alternatively, create a `StartTor.bat` with:

   ```bat
   @echo off
   start "" "PATH_TO_TOR.EXE"
   ```

5. Install Nmap:  
   https://nmap.org/download.html

6. Locate `ncat.exe` (usually):  
   `C:\Program Files (x86)\Nmap\ncat.exe`

7. Download the `OnionSSH.bat` script from this repository.

</details>

---

<details>
  <summary><strong>📄 Usage</strong></summary>

1. Ensure `tor.exe` is running (via shortcut or batch file).

2. Run the downloaded `OnionSSH.bat`.

3. Enter your SSH username and server IP address when prompted.

---

The script will establish an SSH connection over the Tor network, anonymizing your connection.

</details>

---

<details>
  <summary><strong>🔐 Example</strong></summary>

```
======================================
        OnionSSH - SSH over Tor        
======================================

USERNAME~: root
IP OR DOMAIN~: 192.168.1.100

Starting SSH connection via Tor...
```

</details>

---

<details>
  <summary><strong>🧠 Notes</strong></summary>

- Using SSH keys is strongly recommended over passwords.  
- Target servers must have SSH listening on port 22 (or use the `-p` option in your SSH command).  
- Your real IP is masked by Tor.  
- Always start Tor **before** launching the SSH connection.

</details>

---

<p align="center">
  <sub><em>This tool is intended for ethical, privacy-conscious use only.</em></sub>
</p>
