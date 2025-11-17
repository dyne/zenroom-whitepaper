#!/bin/bash

# Number of commits to include (default: 5)
N=${1:-5}

echo '\begin{tabular}{|l|l|l|}'
echo '\hline'
echo 'Hash & Author & Message \\'
echo '\hline'

git log -n $N --pretty=format:'%h%x09%an%x09%s' |
awk -F'\t' '{
    # Escape LaTeX special characters in commit message
    gsub("_","\\_", $3);
    gsub("&","\\&", $3);
    gsub("%","\\%", $3);
    print $1 " & " $2 " & " $3 " \\\\ \\hline"
}'

echo '\end{tabular}'
