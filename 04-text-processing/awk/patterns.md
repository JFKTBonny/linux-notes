# awk: Patterns

Selecting which lines an action runs on. Run every example from the `04-text-processing/` folder; the sample files are in `sample-data/`.

## Lines containing text (like grep)

```bash
awk '/Engineering/' sample-data/users.csv
```

## Lines not containing text

```bash
awk '!/Engineering/' sample-data/users.csv
```

## Field equals a value

```bash
awk -F',' '$3 == "Sales"' sample-data/users.csv
```

## Field does not equal a value

```bash
awk -F',' '$5 != "Rome"' sample-data/users.csv
```

## Numeric comparison

```bash
awk -F',' '$4 > 60000' sample-data/users.csv
```

## Field matches a regex

```bash
awk -F',' '$2 ~ /^[A-C]/' sample-data/users.csv
```

## Field does not match a regex

```bash
awk -F',' '$2 !~ /a$/' sample-data/users.csv
```

## AND condition

```bash
awk -F',' '$3 == "Engineering" && $4 > 70000' sample-data/users.csv
```

## OR condition

```bash
awk -F',' '$5 == "Rome" || $5 == "Milan"' sample-data/users.csv
```

## Skip the header row

```bash
awk -F',' 'NR > 1' sample-data/users.csv
```

## Specific line numbers

```bash
awk 'NR == 2 || NR == 4' sample-data/users.csv
```

## Range of lines

```bash
awk 'NR >= 2 && NR <= 4' sample-data/users.csv
```

## Block between two patterns

```bash
awk '/^# Logging/,0' sample-data/app.conf
```

## Skip comments and blank lines

```bash
awk '!/^#/ && NF' sample-data/app.conf
```

`NF` is 0 on blank lines, so it counts as false.

## Pattern with an action

```bash
awk -F',' '$4 > 65000 {print $2, $4}' sample-data/users.csv
```

## HTTP errors in a log (status 400 and above)

```bash
awk '$9 >= 400 {print $1, $7, $9}' sample-data/access.log
```

## Remove duplicate lines, keeping order

```bash
awk '!seen[$0]++' sample-data/access.log | wc -l
```

## See also

- [Basics](basics.md)
- [Calculations](calculations.md)
