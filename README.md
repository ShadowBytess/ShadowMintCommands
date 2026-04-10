Here’s your fully copyable README.md in clean Markdown format:

# Custom Linux Mint Terminal Commands

A collection of **custom terminal commands** for Linux Mint to streamline your workflow. These commands are designed to be **easy to use, modular, and extensible**. Simply source the script in your `.bashrc` or `.zshrc` to load all commands.

---

## 🚀 Quick Start

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/custom-linux-commands.git
cd custom-linux-commands
2. Install All Dependencies

Run this single command to install all required packages:

sudo apt update && sudo apt install -y curl jq speedtest-cli fdupes i3lock unzip unrar p7zip-full git nmcli ethtool iproute2 net-tools systemd vnstat lm-sensors lsof
3. Add the Script to Your Shell

Add the following line to your ~/.bashrc or ~/.zshrc:

source ~/path/to/custom-linux-commands/custom_commands.sh
4. Reload Your Shell
source ~/.bashrc

or

source ~/.zshrc
5. Verify Installation
greet
shadowbyte help
📜 Available Commands
Command	Description	Usage
Core Commands		
greet	Print a welcome message with date and uptime.	greet
sysinfo	Display system information.	sysinfo
cleanup	Remove cache and temporary files.	cleanup
updateall	Update and upgrade all packages.	updateall
openports	List open ports.	openports
loadavg	Show system load average.	loadavg
ramwatch	Live RAM usage monitor.	ramwatch
Network & System		
myip	Show public and local IP addresses.	myip
publicip	Show only public IP.	publicip
localip	Show only local IP.	localip
weather <city>	Get weather for a city.	weather "New York"
speedtest	Run internet speed test.	speedtest
wifi	Show Wi-Fi details.	wifi
ethernet	Show Ethernet details.	ethernet
pingtest <host>	Ping a host 4 times.	pingtest google.com
battery	Show battery status.	battery
netusage	Show network usage stats.	netusage
portinfo <port>	Show process using a port.	portinfo 8080
flushdns	Flush DNS cache.	flushdns
File Management		
findlarge	Find files larger than 100MB.	findlarge
listfiles <dir>	List files in directory.	listfiles ~/Documents
countfiles <dir>	Count files in directory.	countfiles ~/Downloads
findempty <dir>	Find empty files.	findempty ~/Projects
findduplicates <dir>	Find duplicate files.	findduplicates ~/Downloads
backup <file>	Create timestamped backup.	backup file.txt
extract <file>	Extract archives.	extract file.zip
extracthere <files>	Extract multiple archives.	extracthere *.zip
treesize <dir>	Show folder size breakdown.	treesize ~/Projects
largest	Show 10 largest files.	largest
recent	Show recent files.	recent
fsize <file>	Show file size.	fsize file.txt
Process & Performance		
killport <port>	Kill process using port.	killport 8080
topcpu	Show top CPU processes.	topcpu
topmem	Show top memory processes.	topmem
diskusage	Show disk usage.	diskusage
diskfree	Show free disk space.	diskfree
cpuinfo	Show CPU info.	cpuinfo
meminfo	Show memory info.	meminfo
temps	Show CPU temperature.	temps
ramwatch	Live RAM monitoring.	ramwatch
System Information		
uptime	Show system uptime.	uptime
osinfo	Show OS info.	osinfo
processes	List processes.	processes
services	List services.	services
users	Show logged-in users.	users
lastboot	Show last boot time.	lastboot
Utilities		
lockscreen	Lock screen.	lockscreen
historyclean	Clear terminal history.	historyclean
clearcache	Clear system caches.	clearcache
reload	Reload shell config.	reload
now	Show current time.	now
please	Re-run last command with sudo.	please
Git & Development		
gitclone <repo>	Clone GitHub repo.	gitclone URL
gitquick "<msg>"	Commit & push quickly.	gitquick "msg"
makedir <dir>	Create & enter directory.	makedir project
search <term>	Search inside files.	search "hello"
pyserve <port>	Start Python server.	pyserve 8000
mkvenv	Create Python venv.	mkvenv
Minecraft Tools		
mcstart	Start Minecraft server.	mcstart
mcstop	Stop server.	mcstop
mcattach	Attach to server screen.	mcattach
mcstatuslocal	Check local server.	mcstatuslocal
Help		
shadowbyte help	List all commands.	shadowbyte help
🛠 Dependencies
sudo apt update && sudo apt install -y curl jq speedtest-cli fdupes i3lock unzip unrar p7zip-full git nmcli ethtool iproute2 net-tools systemd vnstat lm-sensors lsof
Breakdown
Dependency	Purpose
curl	API requests
jq	JSON parsing
speedtest-cli	Internet speed test
fdupes	Duplicate file detection
i3lock	Screen locking
unzip/unrar/p7zip-full	Archive extraction
git	Version control
nmcli	Wi-Fi tools
ethtool	Ethernet tools
iproute2	Networking
net-tools	Legacy networking
systemd	Service management
vnstat	Network usage stats
lm-sensors	Temperature monitoring
lsof	Port/process inspection
📂 Repository Structure
custom-linux-commands/
├── custom_commands.sh
├── README.md
└── LICENSE
🤝 Contributing
Fork the repo
Add or improve commands
Submit a pull request
📜 License

MIT License

💡 Tips
Edit custom_commands.sh to customize commands
Run reload instead of reopening terminal
Debug with:
bash -x custom_commands.sh

---

If you want next upgrade, I can turn this into:
- :contentReference[oaicite:0]{index=0}
- :contentReference[oaicite:1]{index=1}
- or :contentReference[oaicite:2]{index=2}
