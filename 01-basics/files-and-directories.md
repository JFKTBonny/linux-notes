# Files and Directories

Creating, copying, moving and deleting.

## Create a directory, including parent folders

```bash
mkdir -p projects/app/src
```

## Create an empty file

```bash
touch notes.txt
```

## Copy a file

```bash
cp notes.txt notes-backup.txt
```

## Copy a directory recursively

```bash
cp -r projects projects-backup
```

## Move or rename

```bash
mv notes.txt documents/notes.txt
```

## Delete a file

```bash
rm notes-backup.txt
```

## Delete a directory and its contents

```bash
rm -r projects-backup
```

> **Warning:** there is no undo. Double-check the path before running.

## See also

- [Navigation](navigation.md)
- [Permissions](../02-system/permissions.md)
