# Firewall

UFW on Ubuntu/Debian, firewalld on Fedora/RHEL.

## UFW: allow SSH first

```bash
sudo ufw allow ssh
```

Do this before enabling the firewall so you don't lock yourself out.

## UFW: enable the firewall

```bash
sudo ufw enable
```

## UFW: allow a port

```bash
sudo ufw allow 443/tcp
```

## UFW: allow a port only from one IP

```bash
sudo ufw allow from 192.168.1.20 to any port 22
```

## UFW: deny a port

```bash
sudo ufw deny 3306
```

## UFW: show rules with numbers

```bash
sudo ufw status numbered
```

## UFW: delete rule number 3

```bash
sudo ufw delete 3
```

## firewalld: show current rules

```bash
sudo firewall-cmd --list-all
```

## firewalld: open a port permanently

```bash
sudo firewall-cmd --permanent --add-port=8080/tcp
```

## firewalld: open a service by name

```bash
sudo firewall-cmd --permanent --add-service=http
```

## firewalld: apply changes

```bash
sudo firewall-cmd --reload
```

## See also

- [Ports](ports.md)
