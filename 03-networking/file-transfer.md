# File Transfer

Copying files between machines over SSH.

## Copy a file to a server

```bash
scp file.txt user@192.168.1.10:/home/user/
```

## Copy a file from a server

```bash
scp user@192.168.1.10:/home/user/file.txt .
```

## Sync a directory (only sends changes, resumable)

```bash
rsync -avz --progress projects/ user@192.168.1.10:/home/user/projects/
```

## Mirror exactly, deleting files removed locally

```bash
rsync -avz --delete projects/ user@192.168.1.10:/home/user/projects/
```

> **Warning:** use with care. Preview first with the command below.

## Preview what rsync would do without doing it

```bash
rsync -avzn --delete projects/ user@192.168.1.10:/home/user/projects/
```

## See also

- [SSH](ssh.md)
