# awk: Built-in Variables

NR, NF, FS, OFS and friends. Run every example from the `04-text-processing/` folder; the sample files are in `sample-data/`.

## Number each line

```bash
awk '{print NR ": " $0}' sample-data/users.csv
```

## Count lines (like wc -l)

```bash
awk 'END {print NR}' sample-data/users.csv
```

## Number of fields on each line

```bash
awk '{print NF}' sample-data/access.log
```

## Print the second-to-last field

```bash
awk '{print $(NF-1)}' sample-data/access.log
```

## Set the separator inside the program

```bash
awk 'BEGIN {FS = ","} {print $2}' sample-data/users.csv
```

## Set both input and output separators

```bash
awk 'BEGIN {FS = ","; OFS = ";"} {$1 = $1; print}' sample-data/users.csv
```

## Show the file name for each line

```bash
awk 'FNR == 1 {print FILENAME}' sample-data/users.csv sample-data/app.conf
```

## Pass a shell variable into awk

```bash
awk -F',' -v dept="Sales" '$3 == dept {print $2}' sample-data/users.csv
```

## Pass a numeric threshold

```bash
awk -F',' -v min=60000 '$4 >= min {print $2, $4}' sample-data/users.csv
```

## Read an environment variable

```bash
awk 'BEGIN {print ENVIRON["HOME"]}'
```

## Length of a field

```bash
awk -F',' 'NR > 1 {print $2, length($2)}' sample-data/users.csv
```

## See also

- [Basics](basics.md)
- [Programs](programs.md)
