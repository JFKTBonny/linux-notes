# Ports and Connections

Seeing what is listening and what is connected.

## All listening TCP/UDP ports with the owning process

```bash
sudo ss -tulpn
```

## All established connections

```bash
ss -tn state established
```

## Who is using port 80

```bash
sudo ss -tlpn 'sport = :80'
```

## Alternative with lsof

```bash
sudo lsof -i :80
```

Flag meanings: `-t` TCP, `-u` UDP, `-l` listening, `-p` process, `-n` numeric (no name lookups).

## See also

- [Firewall](firewall.md)
