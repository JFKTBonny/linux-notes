# Interfaces and IP Addresses

Inspecting and changing network interfaces. Changes made with `ip` are temporary and lost on reboot.

## Show all interfaces and their IPs

```bash
ip a
```

## Show a single interface

```bash
ip a show eth0
```

## Brief, readable overview

```bash
ip -br a
```

## Bring an interface up

```bash
sudo ip link set eth0 up
```

## Bring an interface down

```bash
sudo ip link set eth0 down
```

## Add a temporary IP address

```bash
sudo ip addr add 192.168.1.50/24 dev eth0
```

## Remove it

```bash
sudo ip addr del 192.168.1.50/24 dev eth0
```

## Show your public IP

```bash
curl ifconfig.me
```

## See also

- [Routing](routing.md)
- [Configuration](configuration.md)
