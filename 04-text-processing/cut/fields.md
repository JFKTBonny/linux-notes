# cut: Fields

Extracting columns separated by a delimiter. Run every example from the `04-text-processing/` folder; the sample files are in `sample-data/`.

## Print one field

```bash
cut -d',' -f2 sample-data/users.csv
```

## Print several fields

```bash
cut -d',' -f2,4 sample-data/users.csv
```

## Print a range of fields

```bash
cut -d',' -f2-4 sample-data/users.csv
```

## Print from a field to the end

```bash
cut -d',' -f3- sample-data/users.csv
```

## Print everything except one field

```bash
cut -d',' -f3 --complement sample-data/users.csv
```

## Change the output delimiter

```bash
cut -d',' -f2,5 --output-delimiter=' | ' sample-data/users.csv
```

## Skip the header row

```bash
tail -n +2 sample-data/users.csv | cut -d',' -f2
```

## Values from a key=value file

```bash
grep -v '^#' sample-data/app.conf | grep '=' | cut -d'=' -f2
```

## Usernames from /etc/passwd

```bash
cut -d':' -f1 /etc/passwd
```

## Usernames and their shells

```bash
cut -d':' -f1,7 /etc/passwd
```

## Ignore lines without the delimiter

```bash
cut -d'=' -f1 -s sample-data/app.conf
```

`-s` drops comments and blank lines here, because they contain no `=`.

## Unique values in a column

```bash
tail -n +2 sample-data/users.csv | cut -d',' -f3 | sort -u
```

## Count occurrences of each value

```bash
tail -n +2 sample-data/users.csv | cut -d',' -f5 | sort | uniq -c
```

## See also

- [Characters and Bytes](characters.md)
- [awk](../awk/README.md)
