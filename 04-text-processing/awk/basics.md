# awk: Basics

Printing fields and choosing separators. Run every example from the `04-text-processing/` folder; the sample files are in `sample-data/`.

## Print every line

```bash
awk '{print}' sample-data/users.csv
```

## Print one field from comma-separated data

```bash
awk -F',' '{print $2}' sample-data/users.csv
```

## Print several fields

```bash
awk -F',' '{print $2, $3}' sample-data/users.csv
```

## Print fields in any order

```bash
awk -F',' '{print $5, $2}' sample-data/users.csv
```

Unlike `cut`, awk prints fields in the order you list them.

## Print the last field

```bash
awk -F',' '{print $NF}' sample-data/users.csv
```

## Print fields from whitespace-separated data

```bash
awk '{print $1, $9}' sample-data/access.log
```

No `-F` needed: whitespace is the default separator.

## Add text around fields

```bash
awk -F',' '{print $2 " works in " $5}' sample-data/users.csv
```

## Set the output separator

```bash
awk -F',' -v OFS=' | ' '{print $2, $3, $4}' sample-data/users.csv
```

## Convert CSV to tab-separated

```bash
awk -F',' -v OFS='\t' '{$1 = $1; print}' sample-data/users.csv
```

`$1 = $1` forces awk to rebuild the line using the new `OFS`.

## Split on = for config files

```bash
awk -F'=' '{print $1}' sample-data/app.conf
```

## Use a regex as separator

```bash
echo 'a1b22c333d' | awk -F'[0-9]+' '{print $1, $2, $3, $4}'
```

## Parse command output: disk usage

```bash
df -h | awk '{print $1, $5}'
```

## Parse command output: process names and memory

```bash
ps aux | awk '{print $11, $4}' | head -n 5
```

## See also

- [Patterns](patterns.md)
- [Built-in Variables](variables.md)
