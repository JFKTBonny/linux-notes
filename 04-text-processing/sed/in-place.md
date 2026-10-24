# sed: In-place Editing

Changing files directly with `-i`. Practice on a copy so the sample data stays intact. Run every example from the `04-text-processing/` folder; the sample files are in `sample-data/`.

## Make a working copy

```bash
cp sample-data/app.conf /tmp/app.conf
```

## Preview the change first (no -i)

```bash
sed 's/^port=.*/port=9090/' /tmp/app.conf
```

## Apply it in place

```bash
sed -i 's/^port=.*/port=9090/' /tmp/app.conf
```

## Check the result

```bash
grep '^port=' /tmp/app.conf
```

## Edit in place and keep a backup

```bash
sed -i.bak 's/^debug=true/debug=false/' /tmp/app.conf
```

## Compare with the backup

```bash
diff /tmp/app.conf.bak /tmp/app.conf
```

## Several edits in one pass

```bash
sed -i -e 's/^host=.*/host=0.0.0.0/' -e 's/^log_level=.*/log_level=debug/' /tmp/app.conf
```

## Remove comments and blank lines from the copy

```bash
sed -i '/^#/d; /^$/d' /tmp/app.conf
```

## View the final file

```bash
cat /tmp/app.conf
```

## Same edit across many files

```bash
cp sample-data/app.conf /tmp/a.conf && cp sample-data/app.conf /tmp/b.conf && sed -i 's/localhost/127.0.0.1/' /tmp/a.conf /tmp/b.conf
```

## Clean up

```bash
rm -f /tmp/app.conf /tmp/app.conf.bak /tmp/a.conf /tmp/b.conf
```

## macOS note

On macOS (BSD sed), `-i` needs an explicit backup suffix, even if empty:

```bash
sed -i '' 's/old/new/' file.txt
```

## See also

- [Basics](basics.md)
