# Viewing Files

Reading file contents and logs.

## Print a whole file

```bash
cat /etc/hostname
```

## Scroll through a long file

```bash
less /var/log/syslog
```

Press `q` to quit.

## Show the first 20 lines

```bash
head -n 20 /var/log/syslog
```

## Show the last 20 lines

```bash
tail -n 20 /var/log/syslog
```

## Follow a log live

```bash
tail -f /var/log/syslog
```

Press `Ctrl+C` to stop.

## See also

- [Searching](searching.md)
