# rewriter
takes a Redirect 301 /somefile.php?id=1234 http://example.com/new/place.html  file
makes rewrites conds out of them:

RewriteCond %{QUERY_STRING} id=1234$
RewriteRule (.*) /new/place.html? [R=301,L]

