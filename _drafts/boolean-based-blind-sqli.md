---
layout: post
title: Boolean-based Blind SQL Injections
---

**Scenario**: you have a SQL injectable page, but the page won't display any SQL result. It only answers **YES** or **NO** (or some other boolean values) depending on the query results.

**Objective**: extract data from the underlying database, without displaying any data on the page.

**Technique**: Boolean-based Blind SQL Injections.

## Blind Injections

Blind injections are called *blind* because you can't display any data on the page you are attacking, you have to *infer* the results from the page response to an aptly crafted request.

### Detection

If you are really really lucky, you can try and insert something like `"`, `'` or `-- -` (or anything that would trigger a *syntax error*) and see if a SQL Error is displayed on your page.

Then again, if this happens, you're better off exploiting the page with an **Error-based SQL Injection**.

On a normal scenario, you might have a link to a page that looks like  

`https://www.vulnerable.com/select_item.php?id=2`

and the code for the *select_item.php* page might look like

```php
<?php

// Import MySQL credentials
include(__DIR__.'/db/mysql_credentials.php');

// Start DB connection
$con = new mysqli(
    $mysql_server,
    $mysql_user,
    $mysql_pass, 
    $mysql_db
);

// Store GET parameter
$id = $_GET['id'];

// Create a query
$query = "SELECT * "
        ."FROM items "
        ."WHERE id=$id";

// Get query results
$result = $con->query($query);

// Does the item exist on the DB?
if ($result->num_rows > 0) {
    echo "YES";
} else {
    echo "NO";
}
```

### Defining baselines

