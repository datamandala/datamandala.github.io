---
layout: post
title: Property sales analytics with rbooli .
author: Feodor Georgiev
published: true
status: publish
draft: false
tags: R Booli RStudio
---
 
There is a great R package written by Thomas Reinholdsson as a wraper for the Booli API ([Booli](https://www.booli.se/) is a Swedish site which hosts data from the real estate market in Sweden)
 
There are many unexplored areas in the real estate data in Sweden, and this post will attempt to present a few visualizations and ideas. 
 
Before getting started, you have to read and accept Booli's Terms of Use and then finally register to receive an API key by e-mail.
 
After this, let's install the rbooli package: 
 

{% highlight r %}
#check if the package is already installed
 
if(!require(rbooli)){
    devtools::install_github("reinholdsson/rbooli")
  
}
{% endhighlight %}



{% highlight text %}
## Loading required package: rbooli
{% endhighlight %}



{% highlight text %}
## Warning in library(package, lib.loc = lib.loc, character.only = TRUE,
## logical.return = TRUE, : there is no package called 'rbooli'
{% endhighlight %}



{% highlight text %}
## Error in loadNamespace(name): there is no package called 'devtools'
{% endhighlight %}



{% highlight r %}
#load the package
library(rbooli)
{% endhighlight %}



{% highlight text %}
## Error in library(rbooli): there is no package called 'rbooli'
{% endhighlight %}
 
Next, lets call the API with the callerId and privateKey we received from Booli:






