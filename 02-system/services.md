# Services (systemd)

Managing background services.

## Check a service's status

```bash
systemctl status ssh
```

## Start a service

```bash
sudo systemctl start ssh
```

## Stop a service

```bash
sudo systemctl stop ssh
```

## Restart a service

```bash
sudo systemctl restart ssh
```

## Start automatically at boot

```bash
sudo systemctl enable ssh
```

## View a service's logs

```bash
journalctl -u ssh --since "1 hour ago"
```

## See also

- [Processes](processes.md)
