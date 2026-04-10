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


| Command                   | Description                                                | Usage                                       |
| ------------------------- | ---------------------------------------------------------- | ------------------------------------------- |
| **Core Commands**         | &nbsp;                                                     | &nbsp;                                      |
| `greet`                   | Print a welcome message with the current date and uptime.  | `greet`                                     |
| `sysinfo`                 | Display system information (kernel, CPU, memory, disk).    | `sysinfo`                                   |
| `cleanup`                 | Remove cache and temporary files.                          | `cleanup`                                   |
| `updateall`               | Update and upgrade all packages.                           | `updateall`                                 |
| `openports`               | List all open ports.                                       | `openports`                                 |
| **Network & System**      | &nbsp;                                                     | &nbsp;                                      |
| `myip`                    | Show your public and local IP addresses.                   | `myip`                                      |
| `publicip`                | Show only the public IP address.                           | `publicip`                                  |
| `localip`                 | Show only the local IP address.                            | `localip`                                   |
| `weather <city>`          | Get weather info for a city.                               | `weather "New York"`                        |
| `speedtest`               | Run a network speed test.                                  | `speedtest`                                 |
| `wifi`                    | Show connected Wi-Fi network and signal strength.          | `wifi`                                      |
| `ethernet`                | Show Ethernet connection details (IP, MAC, speed, status). | `ethernet`                                  |
| `pingtest <host>`         | Ping a host 4 times.                                       | `pingtest google.com`                       |
| `battery`                 | Show battery status for laptops.                           | `battery`                                   |
| **File Management**       | &nbsp;                                                     | &nbsp;                                      |
| `findlarge`               | Find files larger than 100MB in the current directory.     | `findlarge`                                 |
| `listfiles <dir>`         | List all files in a directory with details.                | `listfiles ~/Documents`                     |
| `countfiles <dir>`        | Count the number of files in a directory.                  | `countfiles ~/Downloads`                    |
| `findempty <dir>`         | Find empty files in a directory.                           | `findempty ~/Projects`                      |
| `findduplicates <dir>`    | Find duplicate files in a directory.                       | `findduplicates ~/Downloads`                |
| `backup <file>`           | Create a timestamped backup of a file or directory.        | `backup myfile.txt`                         |
| `extract <file>`          | Extract any compressed file (zip, tar, etc.).              | `extract archive.zip`                       |
| **Process & Performance** | &nbsp;                                                     | &nbsp;                                      |
| `killport <port>`         | Kill a process running on a specific port.                 | `killport 8080`                             |
| `topcpu`                  | Show the top 5 CPU-consuming processes.                    | `topcpu`                                    |
| `topmem`                  | Show the top 5 memory-consuming processes.                 | `topmem`                                    |
| `diskusage`               | Show disk usage for all mounted filesystems.               | `diskusage`                                 |
| `diskfree`                | Show free disk space in a human-readable format.           | `diskfree`                                  |
| `cpuinfo`                 | Show detailed CPU information.                             | `cpuinfo`                                   |
| `meminfo`                 | Show detailed memory information.                          | `meminfo`                                   |
| **System Information**    | &nbsp;                                                     | &nbsp;                                      |
| `uptime`                  | Show system uptime in a readable format.                   | `uptime`                                    |
| `osinfo`                  | Show OS information (name, version, ID).                   | `osinfo`                                    |
| `processes`               | List all running processes.                                | `processes`                                 |
| `services`                | List all running services.                                 | `services`                                  |
| `users`                   | List all logged-in users.                                  | `users`                                     |
| `lastboot`                | Show the last boot time.                                   | `lastboot`                                  |
| **Utilities**             | &nbsp;                                                     | &nbsp;                                      |
| `lockscreen`              | Lock the screen (unlock with password).                    | `lockscreen`                                |
| `historyclean`            | Clear terminal history.                                    | `historyclean`                              |
| `clearcache`              | Clear systemd journal logs and other caches.               | `clearcache`                                |
| **Git & Development**     | &nbsp;                                                     | &nbsp;                                      |
| `gitclone <repo>`         | Clone a GitHub repository quickly.                         | `gitclone https://github.com/user/repo.git` |
| `makedir <dir>`           | Create a directory and `cd` into it.                       | `makedir my_project`                        |
| `search <term>`           | Search for a term in all files in the current directory.   | `search "hello"`                            |
| **Help**                  | &nbsp;                                                     | &nbsp;                                      |
| `shadowbyte help`         | List all available custom commands.                        | `shadowbyte help`                           |


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