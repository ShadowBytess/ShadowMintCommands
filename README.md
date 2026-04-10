# Custom Linux Mint Terminal Commands

A collection of **40 custom terminal commands** for Linux Mint to streamline your workflow. These commands are designed to be **easy to use, modular, and extensible**. Simply source the script in your `.bashrc` or `.zshrc` to load all commands.

---

## 🚀 Quick Start

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/custom-linux-commands.git
cd custom-linux-commands
```

### 2. Install All Dependencies

Run this **single command** to install all required packages:

```bash
sudo apt update && sudo apt install -y curl jq speedtest-cli fdupes i3lock unzip unrar p7zip-full git nmcli ethtool iproute2 net-tools systemd
```

### 3. Add the Script to Your Shell

Add the following line to your `~/.bashrc` or `~/.zshrc`:

```bash
source ~/path/to/custom-linux-commands/custom_commands.sh
```

### 4. Reload Your Shell

```bash
source ~/.bashrc
```

or

```bash
source ~/.zshrc
```

### 5. Verify Installation

Test a command to ensure everything works:

```bash
greet
shadowbyte help
```

---

## 📜 Available Commands


| Command                   | Description                                                | Usage                        |
| ------------------------- | ---------------------------------------------------------- | ---------------------------- |
| **Core Commands**         |                                                            |                              |
| `greet`                   | Print a welcome message with the current date and uptime.  | `greet`                      |
| `sysinfo`                 | Display system information (kernel, CPU, memory, disk).    | `sysinfo`                    |
| `cleanup`                 | Remove cache and temporary files.                          | `cleanup`                    |
| `updateall`               | Update and upgrade all packages.                           | `updateall`                  |
| `openports`               | List all open ports.                                       | `openports`                  |
| `loadavg`                 | Show system load average.                                  | `loadavg`                    |
| `ramwatch`                | Live RAM usage monitor.                                    | `ramwatch`                   |
| **Network & System**      |                                                            |                              |
| `myip`                    | Show public and local IP addresses.                        | `myip`                       |
| `publicip`                | Show only the public IP address.                           | `publicip`                   |
| `localip`                 | Show only the local IP address.                            | `localip`                    |
| `weather <city>`          | Get weather info for a city.                               | `weather "New York"`         |
| `speedtest`               | Run a network speed test.                                  | `speedtest`                  |
| `wifi`                    | Show connected Wi-Fi network and signal strength.          | `wifi`                       |
| `ethernet`                | Show Ethernet connection details (IP, MAC, speed, status). | `ethernet`                   |
| `pingtest <host>`         | Ping a host 4 times.                                       | `pingtest google.com`        |
| `battery`                 | Show battery status for laptops.                           | `battery`                    |
| `netusage`                | Show network usage statistics.                             | `netusage`                   |
| `portinfo <port>`         | Show processes using a specific port.                      | `portinfo 8080`              |
| `flushdns`                | Flush DNS cache.                                           | `flushdns`                   |
| **File Management**       |                                                            |                              |
| `findlarge`               | Find files larger than 100MB.                              | `findlarge`                  |
| `listfiles <dir>`         | List files in a directory.                                 | `listfiles ~/Documents`      |
| `countfiles <dir>`        | Count files in a directory.                                | `countfiles ~/Downloads`     |
| `findempty <dir>`         | Find empty files.                                          | `findempty ~/Projects`       |
| `findduplicates <dir>`    | Find duplicate files.                                      | `findduplicates ~/Downloads` |
| `backup <file>`           | Create timestamped backup.                                 | `backup myfile.txt`          |
| `extract <file>`          | Extract compressed files.                                  | `extract archive.zip`        |
| `extracthere <files>`     | Extract multiple archives into current directory.          | `extracthere *.zip`          |
| `treesize <dir>`          | Show folder size breakdown.                                | `treesize ~/Projects`        |
| `largest`                 | Show 10 largest files in directory.                        | `largest`                    |
| `recent`                  | Show recently modified files.                              | `recent`                     |
| `fsize <file>`            | Show file size.                                            | `fsize file.txt`             |
| **Process & Performance** |                                                            |                              |
| `killport <port>`         | Kill process using a port.                                 | `killport 8080`              |
| `topcpu`                  | Show top CPU processes.                                    | `topcpu`                     |
| `topmem`                  | Show top memory processes.                                 | `topmem`                     |
| `diskusage`               | Show disk usage.                                           | `diskusage`                  |
| `diskfree`                | Show free disk space.                                      | `diskfree`                   |
| `cpuinfo`                 | Show CPU details.                                          | `cpuinfo`                    |
| `meminfo`                 | Show memory details.                                       | `meminfo`                    |
| `loadavg`                 | Show system load average.                                  | `loadavg`                    |
| **System Information**    |                                                            |                              |
| `uptime`                  | Show system uptime.                                        | `uptime`                     |
| `osinfo`                  | Show OS info.                                              | `osinfo`                     |
| `processes`               | List running processes.                                    | `processes`                  |
| `services`                | List running services.                                     | `services`                   |
| `users`                   | Show logged-in users.                                      | `users`                      |
| `lastboot`                | Show last boot time.                                       | `lastboot`                   |
| `temps`                   | Show CPU temperature.                                      | `temps`                      |
| `ramwatch`                | Live RAM monitoring.                                       | `ramwatch`                   |
| **Utilities**             |                                                            |                              |
| `lockscreen`              | Lock the screen.                                           | `lockscreen`                 |
| `historyclean`            | Clear terminal history.                                    | `historyclean`               |
| `clearcache`              | Clear system caches and logs.                              | `clearcache`                 |
| `reload`                  | Reload shell config.                                       | `reload`                     |
| `now`                     | Show current timestamp.                                    | `now`                        |
| `please`                  | Re-run last command with sudo.                             | `please`                     |
| **Git & Development**     |                                                            |                              |
| `gitclone <repo>`         | Clone a GitHub repository.                                 | `gitclone URL`               |
| `gitquick "<msg>"`        | Add, commit, and push changes.                             | `gitquick "update"`          |
| `makedir <dir>`           | Create and enter directory.                                | `makedir project`            |
| `search <term>`           | Search inside files.                                       | `search "hello"`             |
| `pyserve <port>`          | Start Python HTTP server.                                  | `pyserve 8000`               |
| `mkvenv`                  | Create Python virtual environment.                         | `mkvenv`                     |
| **Minecraft Tools**       |                                                            |                              |
| `mcstart`                 | Start Minecraft server (screen).                           | `mcstart`                    |
| `mcstop`                  | Stop Minecraft server.                                     | `mcstop`                     |
| `mcattach`                | Attach to server screen.                                   | `mcattach`                   |
| `mcstatuslocal`           | Check local Minecraft server status.                       | `mcstatuslocal`              |
| **Help**                  |                                                            |                              |
| `shadowbyte help`         | List all available commands.                               | `shadowbyte help`            |

---

## 🛠 Dependencies

All dependencies are installed automatically by running:

```bash
sudo apt update && sudo apt install -y curl jq speedtest-cli fdupes i3lock unzip unrar p7zip-full git nmcli ethtool iproute2 net-tools systemd
```


| Dependency                     | Purpose                                           |
| ------------------------------ | ------------------------------------------------- |
| `curl`                         | Required for `myip`, `weather`, and `publicip`.   |
| `jq`                           | Required for JSON parsing (used by some scripts). |
| `speedtest-cli`                | Required for `speedtest`.                         |
| `fdupes`                       | Required for `findduplicates`.                    |
| `i3lock`                       | Required for `lockscreen`.                        |
| `unzip`, `unrar`, `p7zip-full` | Required for `extract`.                           |
| `git`                          | Required for `gitclone`.                          |
| `nmcli`                        | Required for `wifi`.                              |
| `ethtool`                      | Required for `ethernet`.                          |
| `iproute2`                     | Required for `ethernet` and `localip`.            |
| `net-tools`                    | Required for `pingtest`.                          |
| `systemd`                      | Required for `services` and `clearcache`.         |


---

## 📂 Repository Structure

```
custom-linux-commands/
├── custom_commands.sh  # Main script with all commands
├── README.md           # This file
└── LICENSE             # License file
```

---

## 🤝 Contributing

Contributions are welcome! Feel free to:

1. **Fork** the repository.
2. **Add new commands** or improve existing ones.
3. **Submit a pull request** with your changes.

---

## 📜 License

This project is open-source and available under the [MIT License](LICENSE).

---

## 💡 Tips

- **Customize commands**: Edit `custom_commands.sh` to add or modify commands.
- **Keybindings**: Add keyboard shortcuts for frequently used commands (e.g., `lockscreen`) in your desktop environment settings.
- **Debugging**: If a command fails, run it with `bash -x` to see detailed output:
  ```bash
  bash -x custom_commands.sh
  ```
