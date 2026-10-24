# DNS

Resolving names to IP addresses.

## Look up a domain's IP

```bash
dig example.com
```

## Short answer only

```bash
dig +short example.com
```

## Query a specific record type (MX, TXT, NS, AAAA)

```bash
dig MX example.com
```

## Query a specific DNS server

```bash
dig @1.1.1.1 example.com
```

## Reverse lookup (IP to name)

```bash
dig -x 8.8.8.8
```

## Check which DNS servers your system uses

```bash
resolvectl status
```

## Edit local hostname overrides

```bash
sudo nano /etc/hosts
```

## Example line for /etc/hosts

```text
192.168.1.10   myserver.local
```

## Install dig if missing

```bash
sudo apt install dnsutils
```

## See also

- [Diagnostics](diagnostics.md)
