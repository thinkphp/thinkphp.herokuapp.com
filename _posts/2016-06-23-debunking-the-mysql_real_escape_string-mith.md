---
layout: post
disqus: y
title: Debunking the mysql_real_escape_string myth
---
## a.k.a. "My queries are secure because I use mysql_real_escape_string to sanitize inputs"

From [PHP Manual](http://php.net/manual/it/mysqli.real-escape-string.php):

> *string mysqli_real_escape_string ( mysqli $link , string $escapestr )*
>
> **link**  
> Procedural style only: A link identifier returned by mysqli_connect() or mysqli_init()
>
> **escapestr**  
> The string to be escaped.
> Characters encoded are **NUL** (0x00), **\n**, **\r**, **\\**, **'**, **"**, and **SUB** (Ctrl-Z or 0x1A)

Despite what many believe, *mysql_real_escape_string* **does not** encode all MySQL special characters; it only encodes characters that may terminate a string. (Given a specific charset -- I won't cover charset based bypassing here)

String output must be enclosed in quotes to be escaped correctly, which is not always the case. Numeric values, for example, are often passed in a query without being enclosed in single or double quotes.

### Example


``` php
<?php
// ... open connection $con

$id = $con->real_escape_string($_POST['id']);
$query = "SELECT * FROM accounts WHERE id=$id";

$con->query($query);

// ... get query results

$con->close();
```

If `1+1` or `2*1` or anything else that evaluates to 2 is inserted, the DBMS will evaulate the expression the query will return the record with `id = 2`.

This code is exploitable because the input does not require any special character to terminate an open string in order to add commands.

This vulnerability could easily be prevented by casting the input to `(int)`, by using `intval()` (or anything similar) or by using [Prepared Statements](http://php.net/manual/it/mysqli.prepare.php).
