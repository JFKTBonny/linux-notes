# Diagnostics

Testing connectivity and finding where a network problem is.

## Ping 4 times

```bash
ping -c 4 8.8.8.8
```

## Trace the path to a host

```bash
traceroute example.com
```

## Combined ping + traceroute, live

```bash
mtr example.com
```

Press `q` to quit.

## Test whether a TCP port is open

```bash
nc -zv example.com 443
```

## Scan a range of ports

```bash
nc -zv 192.168.1.10 20-100
```

## Troubleshooting order

```bash
ip -br a
```

```bash
ip route
```

```bash
ping -c 4 192.168.1.1
```

```bash
ping -c 4 8.8.8.8
```

```bash
dig +short example.com
```

Interface works → gateway reachable → internet reachable → DNS resolves. The first step that fails is where the problem is.

## See also

- [Interfaces](interfaces.md)
- [Routing](routing.md)
- [DNS](dns.md)
