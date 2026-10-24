# Networking

Commands for inspecting, configuring and troubleshooting Linux networking.

## Pages

- [Interfaces](interfaces.md) — IP addresses and links
- [Routing](routing.md) — routing table and gateways
- [DNS](dns.md) — name resolution
- [Diagnostics](diagnostics.md) — ping, traceroute, troubleshooting order
- [Ports](ports.md) — listening ports and connections
- [Configuration](configuration.md) — persistent settings (NetworkManager, Netplan)
- [Firewall](firewall.md) — UFW and firewalld
- [SSH](ssh.md) — remote access, keys, tunnels
- [File Transfer](file-transfer.md) — scp and rsync
- [curl](curl.md) — HTTP testing
- [Packet Capture](packet-capture.md) — tcpdump

## Key files

| File | Purpose |
|---|---|
| `/etc/hosts` | Local name overrides |
| `/etc/resolv.conf` | DNS servers in use |
| `/etc/hostname` | Machine name |
| `/etc/netplan/` | Ubuntu network config |
| `/etc/ssh/sshd_config` | SSH server settings |
| `~/.ssh/config` | Your SSH shortcuts |

## Change the hostname

```bash
sudo hostnamectl set-hostname myserver
```

## Install the tools used in this section

```bash
../scripts/install-network-tools.sh
```
