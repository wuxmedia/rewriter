#!/bin/bash
# crap rewrite mangler
while IFS='' read -r line || [[ -n "$line" ]]; do
  ID=$(echo "$line" | cut -d "?" -f2 | awk '{print $1}') 
  URL=$(echo "$line"| cut -d "/" -f5)
  echo "RewriteCond %{QUERY_STRING} $ID$"
  echo "RewriteRule (.*) /$URL? [R=301,L]"
done <"$1"
