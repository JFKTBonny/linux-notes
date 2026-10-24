# awk: Programs

BEGIN/END blocks, formatted output, conditions, loops and script files. Run every example from the `04-text-processing/` folder; the sample files are in `sample-data/`.

## BEGIN runs before input, END after

```bash
awk -F',' 'BEGIN {print "--- Start ---"} NR > 1 {print $2} END {print "--- " NR - 1 " users ---"}' sample-data/users.csv
```

## Formatted columns with printf

```bash
awk -F',' 'NR > 1 {printf "%-10s %-12s %8d\n", $2, $3, $4}' sample-data/users.csv
```

`%-10s` = left-aligned text, 10 wide. `%8d` = integer, right-aligned, 8 wide. `%.2f` = 2 decimals.

## Table with a header

```bash
awk -F',' 'NR == 1 {printf "%-10s %8s\n", "NAME", "SALARY"; next} {printf "%-10s %8d\n", $2, $4}' sample-data/users.csv
```

## if / else

```bash
awk -F',' 'NR > 1 {if ($4 >= 65000) print $2, "senior"; else print $2, "junior"}' sample-data/users.csv
```

## Ternary operator

```bash
awk -F',' 'NR > 1 {print $2, ($5 == "Rome" ? "local" : "remote")}' sample-data/users.csv
```

## Loop over fields

```bash
awk -F',' 'NR == 1 {for (i = 1; i <= NF; i++) print i, $i}' sample-data/users.csv
```

## Uppercase and lowercase

```bash
awk -F',' 'NR > 1 {print toupper($2), tolower($3)}' sample-data/users.csv
```

## Substring

```bash
awk -F',' 'NR > 1 {print substr($2, 1, 3)}' sample-data/users.csv
```

## Replace text in a field

```bash
awk -F',' -v OFS=',' '{gsub(/Engineering/, "Eng", $3); print}' sample-data/users.csv
```

## Split a field into parts

```bash
awk '{split($4, t, ":"); print t[2] ":" t[3]}' sample-data/access.log
```

## Write to separate files per group

```bash
awk -F',' 'NR > 1 {print > ("/tmp/dept_" $3 ".csv")}' sample-data/users.csv
```

```bash
ls /tmp/dept_*.csv
```

```bash
rm -f /tmp/dept_*.csv
```

## Join two files on a key

```bash
printf '1,alice@example.com\n3,carla@example.com\n' > /tmp/emails.csv
```

```bash
awk -F',' 'NR == FNR {email[$1] = $2; next} $1 in email {print $2, email[$1]}' /tmp/emails.csv sample-data/users.csv
```

`NR == FNR` is only true while reading the first file, so it loads the lookup table first.

## Run a script file

```bash
awk -F',' -f awk/scripts/salary-report.awk sample-data/users.csv
```

## Run the log report script

```bash
awk -f awk/scripts/log-summary.awk sample-data/access.log
```

## See also

- [Calculations](calculations.md)
- [Built-in Variables](variables.md)
