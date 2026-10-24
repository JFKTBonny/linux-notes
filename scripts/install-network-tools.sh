#!/bin/bash
set -e

if command -v apt >/dev/null 2>&1; then
    sudo apt update
    sudo apt install -y dnsutils traceroute mtr netcat-openbsd tcpdump curl wget rsync
elif command -v dnf >/dev/null 2>&1; then
    sudo dnf install -y bind-utils traceroute mtr nmap-ncat tcpdump curl wget rsync
else
    echo "Unsupported package manager"
    exit 1
fi

echo "Network tools installed"
