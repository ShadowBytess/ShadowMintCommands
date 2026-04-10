#!/bin/bash

# --- Custom Linux Mint Terminal Commands ---
# Source this file in your ~/.bashrc or ~/.zshrc to load all commands.

# --- Original Commands ---
# 1. greet - Print a welcome message
greet() {
    echo "Hello, $USER! Today is $(date +%A), $(date +%B) $(date +%d), $(date +%Y)."
    echo "Your uptime: $(uptime -p)"
}

# 2. sysinfo - Display system information
sysinfo() {
    echo "=== System Info ==="
    echo "Kernel: $(uname -r)"
    echo "CPU: $(lscpu | grep "Model name" | cut -d':' -f2 | xargs)"
    echo "Memory: $(free -h | awk '/Mem/{print $3 "/" $2}') used"
    echo "Disk: $(df -h / | awk '/\//{print $3 "/" $2}') used"
}

# 3. cleanup - Remove cache and temporary files
cleanup() {
    echo "Cleaning up..."
    sudo apt clean
    rm -rf ~/.cache/*
    rm -rf ~/.thumbnails/*
    echo "Done!"
}

# 4. updateall - Update and upgrade all packages
updateall() {
    echo "Updating packages..."
    sudo apt update && sudo apt upgrade -y
    sudo apt autoremove -y
    echo "System updated!"
}

# 5. openports - List open ports
openports() {
    echo "Open ports:"
    ss -tuln
}

# --- Previously Added Commands ---
# 6. myip - Show your public and local IP addresses
myip() {
    echo "Public IP: $(curl -s ifconfig.me)"
    echo "Local IP: $(hostname -I | awk '{print $1}')"
}

# 7. findlarge - Find files larger than 100MB in the current directory
findlarge() {
    echo "Files larger than 100MB in $(pwd):"
    find . -type f -size +100M -exec ls -lh {} \;
}

# 8. killport - Kill a process running on a specific port
killport() {
    if [ -z "$1" ]; then
        echo "Usage: killport <port_number>"
        return 1
    fi
    sudo kill -9 $(lsof -t -i:$1) 2>/dev/null
    if [ $? -eq 0 ]; then
        echo "Killed process on port $1"
    else
        echo "Error: No process found on port $1"
    fi
}

# 9. backup - Create a backup of a file or directory
backup() {
    if [ -z "$1" ]; then
        echo "Usage: backup <file_or_directory>"
        return 1
    fi
    cp -r "$1" "$1.bak_$(date +%Y%m%d_%H%M%S)"
    echo "Backup created: $1.bak_$(date +%Y%m%d_%H%M%S)"
}

# 10. weather - Get weather info for a city (requires curl)
weather() {
    if [ -z "$1" ]; then
        echo "Usage: weather <city>"
        return 1
    fi
    curl -s "wttr.in/$1?format=%C+%t+%w" | xargs echo
}

# 11. speedtest - Run a speed test (requires speedtest-cli)
speedtest() {
    echo "Running speed test..."
    sudo apt install speedtest-cli -y > /dev/null 2>&1
    speedtest-cli --simple
}

# 12. diskusage - Show disk usage for all mounted filesystems
diskusage() {
    echo "Disk usage:"
    df -h
}

# 13. topcpu - Show top 5 CPU-consuming processes
topcpu() {
    echo "Top 5 CPU-consuming processes:"
    ps aux --sort=-%cpu | head -n 6
}

# 14. topmem - Show top 5 memory-consuming processes
topmem() {
    echo "Top 5 memory-consuming processes:"
    ps aux --sort=-%mem | head -n 6
}

# --- New Commands ---
# 15. battery - Show battery status (for laptops)
battery() {
    echo "Battery status:"
    upower -i $(upower -e | grep 'BAT') | grep -E "state|percentage|time to empty|time to full"
}

# 16. lockscreen - Lock the screen with i3lock (requires i3lock)
lockscreen() {
    if ! command -v i3lock &> /dev/null; then
        echo "i3lock not found. Installing..."
        sudo apt install i3lock -y
    fi
    i3lock -c 000000 -n
}

# 17. historyclean - Clear terminal history
historyclean() {
    history -c
    history -w
    echo "Terminal history cleared."
}

# 18. findduplicates - Find duplicate files in a directory
findduplicates() {
    if [ -z "$1" ]; then
        echo "Usage: findduplicates <directory>"
        return 1
    fi
    echo "Searching for duplicate files in $1..."
    fdupes -r "$1"
}

# 19. listfiles - List all files in a directory with details
listfiles() {
    if [ -z "$1" ]; then
        echo "Usage: listfiles <directory>"
        return 1
    fi
    ls -lh "$1"
}

# 20. countfiles - Count files in a directory
countfiles() {
    if [ -z "$1" ]; then
        echo "Usage: countfiles <directory>"
        return 1
    fi
    echo "Number of files in $1: $(find "$1" -type f | wc -l)"
}

# 21. findempty - Find empty files in a directory
findempty() {
    if [ -z "$1" ]; then
        echo "Usage: findempty <directory>"
        return 1
    fi
    echo "Empty files in $1:"
    find "$1" -type f -empty
}

# 22. cpuinfo - Show detailed CPU information
cpuinfo() {
    echo "=== CPU Information ==="
    lscpu
}

# 23. meminfo - Show detailed memory information
meminfo() {
    echo "=== Memory Information ==="
    free -h
    echo ""
    echo "Detailed memory usage:"
    cat /proc/meminfo | grep -E "MemTotal|MemFree|MemAvailable|Buffers|Cached"
}

# 24. gitclone - Clone a GitHub repo quickly
gitclone() {
    if [ -z "$1" ]; then
        echo "Usage: gitclone <repository_url>"
        return 1
    fi
    git clone "$1"
    if [ $? -eq 0 ]; then
        echo "Repository cloned successfully."
    else
        echo "Error: Failed to clone repository."
        return 1
    fi
}

# 25. makedir - Create a directory and cd into it
makedir() {
    if [ -z "$1" ]; then
        echo "Usage: makedir <directory_name>"
        return 1
    fi
    mkdir -p "$1" && cd "$1"
    echo "Directory '$1' created and entered."
}

# 26. extract - Extract any compressed file (zip, tar, etc.)
extract() {
    if [ -z "$1" ]; then
        echo "Usage: extract <compressed_file>"
        return 1
    fi
    if [ ! -f "$1" ]; then
        echo "Error: File '$1' does not exist."
        return 1
    fi
    case "$1" in
        *.tar.bz2) tar xvjf "$1" ;;
        *.tar.gz)  tar xvzf "$1" ;;
        *.bz2)     bunzip2 "$1" ;;
        *.rar)     unrar x "$1" ;;
        *.gz)      gunzip "$1" ;;
        *.tar)     tar xvf "$1" ;;
        *.tbz2)    tar xvjf "$1" ;;
        *.tgz)     tar xvzf "$1" ;;
        *.zip)     unzip "$1" ;;
        *.Z)       uncompress "$1" ;;
        *.7z)      7z x "$1" ;;
        *)         echo "Error: '$1' is not a recognized archive format." ;;
    esac
}

# 27. search - Search for a term in all files in the current directory
search() {
    if [ -z "$1" ]; then
        echo "Usage: search <search_term>"
        return 1
    fi
    grep -r --color=auto "$1" .
}

# 28. wifi - Show connected Wi-Fi network and signal strength
wifi() {
    echo "Connected Wi-Fi Network:"
    nmcli -t -f active,ssid,signal,security dev wifi | grep "^yes" | awk -F: '{print "SSID: "$2", Signal: "$3", Security: "$4}'
}

# 29. ethernet - Show Ethernet connection details
ethernet() {
    echo "=== Ethernet Connection Details ==="
    echo "Interface: $(ip -o link show | awk -F': ' '{if ($2 == "eth0" || $2 == "enp0s3" || $2 == "enp0s25") print $2}')"
    echo "IP Address: $(ip -4 addr show eth0 2>/dev/null | grep -oP '(?<=inet\s)\d+(\.\d+){3}' || ip -4 addr show enp0s3 2>/dev/null | grep -oP '(?<=inet\s)\d+(\.\d+){3}' || echo "Not connected")"
    echo "MAC Address: $(ip link show eth0 2>/dev/null | grep -oP '(?<=link/ether\s)[\da-f:]+' || ip link show enp0s3 2>/dev/null | grep -oP '(?<=link/ether\s)[\da-f:]+' || echo "Not connected")"
    echo "Speed: $(ethtool eth0 2>/dev/null | grep -i speed || ethtool enp0s3 2>/dev/null | grep -i speed || echo "Not available")"
    echo "Status: $(cat /sys/class/net/eth0/operstate 2>/dev/null || cat /sys/class/net/enp0s3/operstate 2>/dev/null || echo "Not connected")"
}

# --- 10 New Commands ---
# 30. pingtest - Ping a host (e.g., google.com) 4 times
pingtest() {
    if [ -z "$1" ]; then
        echo "Usage: pingtest <host>"
        return 1
    fi
    ping -c 4 "$1"
}

# 31. publicip - Show only the public IP address
publicip() {
    curl -s ifconfig.me
}

# 32. localip - Show only the local IP address
localip() {
    hostname -I | awk '{print $1}'
}

# 33. processes - List all running processes
processes() {
    echo "=== Running Processes ==="
    ps aux
}

# 34. services - List all running services
services() {
    echo "=== Running Services ==="
    systemctl list-units --type=service --state=running
}

# 35. diskfree - Show free disk space in a human-readable format
diskfree() {
    echo "=== Free Disk Space ==="
    df -h
}

# 36. uptime - Show system uptime
uptime() {
    echo "=== System Uptime ==="
    uptime -p
}

# 37. osinfo - Show OS information
osinfo() {
    echo "=== OS Information ==="
    cat /etc/os-release | grep -E "NAME|VERSION|ID"
}

# 38. users - List all logged-in users
users() {
    echo "=== Logged-in Users ==="
    who
}

# 39. lastboot - Show the last boot time
lastboot() {
    echo "=== Last Boot Time ==="
    who -b
}

# 40. clearcache - Clear systemd journal logs and other caches
clearcache() {
    echo "Clearing caches..."
    sudo journalctl --vacuum-time=2weeks
    sudo systemd-resolve --flush-caches
    sudo apt clean
    echo "Caches cleared."
}

# 41. shadowbyte help - List all custom commands
shadowbyte_help() {
    echo "=== Custom Commands ==="
    echo "Available commands:"
    echo "  greet                     - Print a welcome message"
    echo "  sysinfo                   - Display system information"
    echo "  cleanup                   - Remove cache and temporary files"
    echo "  updateall                 - Update and upgrade all packages"
    echo "  openports                 - List open ports"
    echo "  myip                      - Show your public and local IP addresses"
    echo "  findlarge                 - Find files larger than 100MB in the current directory"
    echo "  killport <port>           - Kill a process running on a specific port"
    echo "  backup <file>             - Create a backup of a file or directory"
    echo "  weather <city>            - Get weather info for a city"
    echo "  speedtest                 - Run a speed test"
    echo "  diskusage                 - Show disk usage for all mounted filesystems"
    echo "  topcpu                    - Show top 5 CPU-consuming processes"
    echo "  topmem                    - Show top 5 memory-consuming processes"
    echo "  battery                   - Show battery status for laptops"
    echo "  lockscreen                - Lock the screen"
    echo "  historyclean              - Clear terminal history"
    echo "  findduplicates <dir>      - Find duplicate files in a directory"
    echo "  listfiles <dir>           - List all files in a directory with details"
    echo "  countfiles <dir>          - Count files in a directory"
    echo "  findempty <dir>           - Find empty files in a directory"
    echo "  cpuinfo                   - Show detailed CPU information"
    echo "  meminfo                   - Show detailed memory information"
    echo "  gitclone <repo>           - Clone a GitHub repo quickly"
    echo "  makedir <dir>             - Create a directory and cd into it"
    echo "  extract <file>            - Extract any compressed file"
    echo "  search <term>             - Search for a term in all files in the current directory"
    echo "  wifi                      - Show connected Wi-Fi network and signal strength"
    echo "  ethernet                  - Show Ethernet connection details"
    echo "  pingtest <host>           - Ping a host 4 times"
    echo "  publicip                  - Show only the public IP address"
    echo "  localip                   - Show only the local IP address"
    echo "  processes                 - List all running processes"
    echo "  services                  - List all running services"
    echo "  diskfree                  - Show free disk space in a human-readable format"
    echo "  uptime                    - Show system uptime"
    echo "  osinfo                    - Show OS information"
    echo "  users                     - List all logged-in users"
    echo "  lastboot                  - Show the last boot time"
    echo "  clearcache                - Clear systemd journal logs and other caches"
    echo "  shadowbyte help           - List all custom commands"
}

# Alias for the help command
alias shadowbyte='shadowbyte_help'
