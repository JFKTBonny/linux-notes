# Routing

Viewing and changing how traffic leaves the machine.

## Show the routing table

```bash
ip route
```

## Show which route a destination will use

```bash
ip route get 8.8.8.8
```

## Add a temporary default gateway

```bash
sudo ip route add default via 192.168.1.1
```

## Add a route to a specific network

```bash
sudo ip route add 10.10.0.0/16 via 192.168.1.254
```

## Delete a route

```bash
sudo ip route del 10.10.0.0/16
```

## See also

- [Interfaces](interfaces.md)
- [Diagnostics](diagnostics.md)
