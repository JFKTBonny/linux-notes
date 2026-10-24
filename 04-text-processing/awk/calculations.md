# awk: Calculations

Sums, averages, counts and group-by. Run every example from the `04-text-processing/` folder; the sample files are in `sample-data/`.

## Sum a column

```bash
awk -F',' 'NR > 1 {sum += $4} END {print sum}' sample-data/users.csv
```

## Average of a column

```bash
awk -F',' 'NR > 1 {sum += $4; n++} END {print sum / n}' sample-data/users.csv
```

## Maximum value

```bash
awk -F',' 'NR > 1 && $4 > max {max = $4; who = $2} END {print who, max}' sample-data/users.csv
```

## Minimum value

```bash
awk -F',' 'NR == 2 || (NR > 2 && $4 < min) {min = $4; who = $2} END {print who, min}' sample-data/users.csv
```

## Count matching lines

```bash
awk -F',' '$3 == "Engineering" {n++} END {print n}' sample-data/users.csv
```

## Count per group

```bash
awk -F',' 'NR > 1 {count[$3]++} END {for (d in count) print d, count[d]}' sample-data/users.csv
```

## Sum per group

```bash
awk -F',' 'NR > 1 {total[$3] += $4} END {for (d in total) print d, total[d]}' sample-data/users.csv
```

## Average per group

```bash
awk -F',' 'NR > 1 {sum[$3] += $4; n[$3]++} END {for (d in sum) print d, sum[d] / n[d]}' sample-data/users.csv
```

## Requests per IP, most first

```bash
awk '{count[$1]++} END {for (ip in count) print count[ip], ip}' sample-data/access.log | sort -rn
```

## Requests per HTTP status

```bash
awk '{count[$9]++} END {for (s in count) print s, count[s]}' sample-data/access.log | sort
```

## Total bytes served

```bash
awk '{bytes += $10} END {print bytes " bytes"}' sample-data/access.log
```

## Calculate a new column (10% raise)

```bash
awk -F',' -v OFS=',' 'NR == 1 {print $0, "new_salary"; next} {print $0, $4 * 1.10}' sample-data/users.csv
```

## Total disk used by files in a directory

```bash
ls -l /etc | awk 'NR > 1 {sum += $5} END {print sum / 1024 " KB"}'
```

## See also

- [Patterns](patterns.md)
- [Programs](programs.md)
