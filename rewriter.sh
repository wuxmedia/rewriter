#!/bin/bash
# crap rewrite mangler
while read line
do 
  ID=$(echo "$line" | cut -d "?" -f2 | awk '{print $1}') 
  URL=$(echo "$line"| cut -d "." -f4 | sed s@com/@@)
echo "RewriteCond %{QUERY_STRING} "$ID"$"
echo "RewriteRule (.*) /"$URL"? [R=301,L]"

done <rewrite