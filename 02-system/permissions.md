# Permissions

Read (r), write (w) and execute (x) apply to the owner, the group and others.

## Check permissions

```bash
ls -l script.sh
```

## Make a script executable

```bash
chmod +x script.sh
```

## Set exact permissions

```bash
chmod 755 script.sh
```

`755` = owner `rwx`, group `r-x`, others `r-x`. `644` = owner `rw-`, others `r--`.

## Change owner and group

```bash
sudo chown user:group file.txt
```

## Run a command as administrator

```bash
sudo apt update
```

## See also

- [Users](users.md)
