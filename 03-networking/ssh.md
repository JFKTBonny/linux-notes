# SSH

Secure remote access, keys and tunnels.

## Connect

```bash
ssh user@192.168.1.10
```

## Connect on a non-standard port

```bash
ssh -p 2222 user@192.168.1.10
```

## Generate a key pair

```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
```

## Copy your public key to a server (passwordless login)

```bash
ssh-copy-id user@192.168.1.10
```

## Create shortcuts in your SSH config

```bash
nano ~/.ssh/config
```

## Example config entry

```text
Host myserver
    HostName 192.168.1.10
    User user
    Port 22
    IdentityFile ~/.ssh/id_ed25519
```

## Connect using the shortcut

```bash
ssh myserver
```

## Tunnel: local forward

```bash
ssh -L 5432:localhost:5432 user@192.168.1.10
```

Reach the server's port 5432 (e.g. a database) on your own port 5432.

## Tunnel: remote forward

```bash
ssh -R 8080:localhost:3000 user@192.168.1.10
```

Expose your local port 3000 on the server's port 8080.

## Tunnel: SOCKS proxy

```bash
ssh -D 1080 user@192.168.1.10
```

## Jump through a bastion host

```bash
ssh -J user@bastion.example.com user@10.0.0.5
```

## See also

- [File Transfer](file-transfer.md)
