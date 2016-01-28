# rewriter
takes a file with:

    Redirect 301 /somefile.php?id=1234 http://example.com/new/place.html  
makes rewrites conds out of them:

    ./rewrite.sh rewrite
    
    RewriteCond %{QUERY_STRING} id=1234$  
    RewriteRule (.*) /new/place.html? [R=301,L]

