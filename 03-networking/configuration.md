# Persistent Configuration

Settings that survive a reboot. Use NetworkManager on desktops, Fedora and RHEL; Netplan on Ubuntu Server.

## NetworkManager: list connections

```bash
nmcli connection show
```

## NetworkManager: set a static IP

```bash
sudo nmcli connection modify "Wired connection 1" ipv4.method manual ipv4.addresses 192.168.1.50/24 ipv4.gateway 192.168.1.1 ipv4.dns "1.1.1.1 8.8.8.8"
```

## NetworkManager: apply it

```bash
sudo nmcli connection up "Wired connection 1"
```

## NetworkManager: switch back to DHCP

```bash
sudo nmcli connection modify "Wired connection 1" ipv4.method auto ipv4.addresses "" ipv4.gateway "" ipv4.dns ""
```

## NetworkManager: list Wi-Fi networks

```bash
nmcli device wifi list
```

## NetworkManager: connect to Wi-Fi

```bash
sudo nmcli device wifi connect "MyNetwork" password "MyPassword"
```

## Netplan: edit the config

```bash
sudo nano /etc/netplan/01-netcfg.yaml
```

## Netplan: static IP example

```yaml
network:
  version: 2
  ethernets:
    eth0:
      dhcp4: false
      addresses:
        - 192.168.1.50/24
      routes:
        - to: default
          via: 192.168.1.1
      nameservers:
        addresses:
          - 1.1.1.1
          - 8.8.8.8
```

Indentation must be spaces, not tabs.

## Netplan: test safely

```bash
sudo netplan try
```

Reverts automatically after 120 seconds if you lose access.

## Netplan: apply permanently

```bash
sudo netplan apply
```

## See also

- [Interfaces](interfaces.md)
