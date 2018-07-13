# sums the quantities on the second column by the items on the first column
# and prints the results in the descending order by sums.
# first record of the file has headers

NR > 1 { total[$1] += $2 }


 END { for (t in total)
    printf("%10s\t%6d\n", t, total[t]) | "sort -t'\t' -k2 -nr" 
}
