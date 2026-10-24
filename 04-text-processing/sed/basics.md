# sed: Basics

Printing lines and replacing text. Run every example from the `04-text-processing/` folder; the sample files are in `sample-data/`.

## Print a specific line

```bash
sed -n '3p' sample-data/users.csv
```

## Print a range of lines

```bash
sed -n '2,4p' sample-data/users.csv
```

## Print the last line

```bash
sed -n '$p' sample-data/users.csv
```

## Print lines matching a pattern (like grep)

```bash
sed -n '/Engineering/p' sample-data/users.csv
```

## Print line numbers of matching lines

```bash
sed -n '/403/=' sample-data/access.log
```

## Replace the first match on each line

```bash
sed 's/Rome/Roma/' sample-data/users.csv
```

## Replace all matches on each line

```bash
echo 'a-b-c-d' | sed 's/-/_/g'
```

## Replace only the second match

```bash
echo 'a-b-c-d' | sed 's/-/_/2'
```

## Case-insensitive replace

```bash
sed 's/engineering/ENG/I' sample-data/users.csv
```

## Replace only on matching lines

```bash
sed '/Sales/s/Milan/Bergamo/' sample-data/users.csv
```

## Replace only on a specific line

```bash
sed '2s/Alice/Alicia/' sample-data/users.csv
```

## Use a different delimiter for paths

```bash
sed 's|/var/log|/opt/logs|' sample-data/app.conf
```

Any character can follow `s`. Use `|` or `#` when the text contains `/`.

## Insert the matched text with &

```bash
sed 's/[0-9][0-9]*000/€&/' sample-data/users.csv
```

`&` stands for the whole match.

## Print only lines where a replacement happened

```bash
sed -n 's/Rome/Roma/p' sample-data/users.csv
```

## See also

- [Editing Lines](editing.md)
- [Advanced](advanced.md)
