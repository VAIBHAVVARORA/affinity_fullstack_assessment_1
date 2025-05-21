
curl -s "https://www.amfiindia.com/spages/NAVAll.txt" -o NAVAll.txt

awk -F ';' 'BEGIN {OFS="\t"; print "Scheme Name", "Asset Value"} 
    NR > 1 && NF > 5 { print $4, $6 }' NAVAll.txt > nav_data.tsv
