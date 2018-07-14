# sums the quantities on the third column by 1st and 2nd columns
# and prints the results in the descending order by the sums.
# first record of the file has headers
# USAGE: awk -F, -f groupby_mult_cols.awk /path/to/data/file

NR > 1 { total[$1 "\t" $2] += $3 }
 END { for (t in total)
    printf("%s %\t %d\n", t, total[t]) | "sort -t'\t' -k3 -nr" 
}
