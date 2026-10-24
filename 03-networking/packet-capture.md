# Packet Capture

Watching raw traffic with tcpdump. Stop any capture with `Ctrl+C`.

## Capture traffic on an interface

```bash
sudo tcpdump -i eth0
```

## Only port 443

```bash
sudo tcpdump -i eth0 port 443
```

## Only traffic to or from one host

```bash
sudo tcpdump -i eth0 host 192.168.1.10
```

## Save to a file (open later in Wireshark)

```bash
sudo tcpdump -i eth0 -w capture.pcap
```

## See also

- [Diagnostics](diagnostics.md)
