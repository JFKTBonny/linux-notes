# Searching

Finding text inside files and finding files by name or size.

## Find text inside files, recursively

```bash
grep -rn "error" /var/log
```

## Case-insensitive search

```bash
grep -i "warning" /var/log/syslog
```

## Find files by name

```bash
find /home -name "*.txt"
```

## Find files larger than 100 MB

```bash
find / -type f -size +100M 2>/dev/null
```

## See also

- [Viewing Files](viewing-files.md)
