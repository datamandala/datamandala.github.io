---
layout: post
title: What I have read, heard or seen on 2016-12-13.
author: Feodor Georgiev
published: true
status: publish
draft: false
tags: R Jupyter notebooks RStudio research
---
 
A nice T-SQl piece of code to split a string with FTparser in SQL Server 2008+: [Split string with sys.dm_fts_parser](http://sqlblogcasts.com/blogs/tomaztsql/archive/2010/10/20/split-string-with-sys-dm-fts-parser.aspx)
 
-- Create table
 
CREATE TABLE #MyTable ( id INT, text VARCHAR(500) );
 
-- Insert some staging data
 
INSERT  INTO #MyTable
        SELECT  1 AS id ,
                'You can write me an email' AS text
        UNION ALL
        SELECT  2 AS id ,
                'on my private email address: tomaz.tsql@gmail.com' AS text
        UNION ALL
        SELECT  3 AS id ,
                'or even on this imaginary email address tomaz.tsql@nowhere.at' AS text
        UNION ALL
        SELECT  4 AS id ,
                'or on my fake non-existing email address not-exist@all';
 
--Return all words
 
SELECT  display_term AS words
FROM    #MyTable
        CROSS APPLY sys.dm_fts_parser('"' + [text] + '"', 0, 0, 0)
GROUP BY display_term;
 
 
How to read data from SQL Server into RMarkdown:
 

{% highlight r %}
library(RODBC)
cn <- odbcDriverConnect(connection="Driver={SQL Server};server=.;database=test;trusted_connection=yes;")
 
myQuery <- sqlQuery(cn, "
-- Create table
 
 
 
SELECT *
FROM    MyTable        
 
 
")
 
 
myQuery
{% endhighlight %}



{% highlight text %}
##    id                                                              text
## 1   1                                         You can write me an email
## 2   2                 on my private email address: tomaz.tsql@gmail.com
## 3   3     or even on this imaginary email address tomaz.tsql@nowhere.at
## 4   4            or on my fake non-existing email address not-exist@all
## 5   1                                     You can write me an email Bob
## 6   2                 on my private email address: tomaz.tsql@gmail.com
## 7   3 or even on this imaginary email address tomaz.tsql@nowhere.at Bob
## 8   4            or on my fake non-existing email address not-exist@all
## 9   1                                     You can write me an email Bob
## 10  2                 on my private email address: tomaz.tsql@gmail.com
## 11  3 or even on this imaginary email address tomaz.tsql@nowhere.at Bob
## 12  4            or on my fake non-existing email address not-exist@all
## 13  1                                         You can write me an email
## 14  2                 on my private email address: tomaz.tsql@gmail.com
## 15  3     or even on this imaginary email address tomaz.tsql@nowhere.at
## 16  4            or on my fake non-existing email address not-exist@all
## 17  1                                         You can write me an email
## 18  2                 on my private email address: tomaz.tsql@gmail.com
## 19  3     or even on this imaginary email address tomaz.tsql@nowhere.at
## 20  4            or on my fake non-existing email address not-exist@all
{% endhighlight %}
 
