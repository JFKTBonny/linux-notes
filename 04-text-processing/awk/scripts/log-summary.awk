# Summary of a web server access log (common log format)
# Usage: awk -f awk/scripts/log-summary.awk sample-data/access.log

{
    requests++
    bytes += $10
    by_ip[$1]++
    by_status[$9]++
    if ($9 >= 400) errors++
}

END {
    print "Requests: " requests
    print "Bytes:    " bytes
    print "Errors:   " errors " (" int(errors / requests * 100) "%)"
    print ""
    print "By status:"
    for (s in by_status) printf "  %s  %d\n", s, by_status[s]
    print ""
    print "By IP:"
    for (ip in by_ip) printf "  %-15s %d\n", ip, by_ip[ip]
}
