# Salary report per department
# Usage: awk -F',' -f awk/scripts/salary-report.awk sample-data/users.csv

NR == 1 { next }

{
    count[$3]++
    total[$3] += $4
    if ($4 > max[$3]) {
        max[$3] = $4
        top[$3] = $2
    }
}

END {
    printf "%-12s %6s %10s %10s  %s\n", "DEPARTMENT", "STAFF", "TOTAL", "AVERAGE", "TOP EARNER"
    for (d in count) {
        printf "%-12s %6d %10d %10.0f  %s\n", d, count[d], total[d], total[d] / count[d], top[d]
    }
}
