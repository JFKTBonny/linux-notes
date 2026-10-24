# sed: Advanced

Regex groups, ranges and combined commands. Run every example from the `04-text-processing/` folder; the sample files are in `sample-data/`.

## Swap two fields with capture groups

```bash
sed -E 's/^([0-9]+),([^,]+)/\2,\1/' sample-data/users.csv
```

`-E` enables extended regex: `(...)` captures, `\1` and `\2` reuse the captures.

## Reformat a date (YYYY-MM-DD to DD/MM/YYYY)

```bash
echo '2026-10-24' | sed -E 's/([0-9]{4})-([0-9]{2})-([0-9]{2})/\3\/\2\/\1/'
```

## Extract only the IP from each log line

```bash
sed -E 's/^([0-9.]+) .*/\1/' sample-data/access.log
```

## Extract the requested path

```bash
sed -E 's/.*"[A-Z]+ ([^ ]+) .*/\1/' sample-data/access.log
```

## Uppercase a match (GNU sed)

```bash
sed 's/^[a-z_]*/\U&/' sample-data/app.conf
```

## Lowercase everything (GNU sed)

```bash
sed 's/.*/\L&/' sample-data/users.csv
```

## Print a block between two patterns

```bash
sed -n '/^# Logging/,$p' sample-data/app.conf
```

## Delete a block between two patterns

```bash
sed '/^# Application/,/^$/d' sample-data/app.conf
```

## Multiple commands with -e

```bash
sed -e '1d' -e 's/,/ | /g' sample-data/users.csv
```

## Multiple commands with ;

```bash
sed '1d; s/,/ | /g' sample-data/users.csv
```

## Apply to all lines except matches

```bash
sed '/^#/!s/=/ = /' sample-data/app.conf
```

## Number every line

```bash
sed = sample-data/users.csv | sed 'N; s/\n/\t/'
```

## Join all lines into one, comma-separated

```bash
tail -n +2 sample-data/users.csv | cut -d',' -f2 | sed ':a; N; $!ba; s/\n/, /g'
```

## Run commands from a script file

```bash
printf '1d\ns/,/;/g\n' > /tmp/fix.sed
```

```bash
sed -f /tmp/fix.sed sample-data/users.csv
```

## See also

- [Basics](basics.md)
- [awk](../awk/README.md)
