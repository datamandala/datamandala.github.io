---
layout: post
title: Property sales analytics with rbooli.
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
knitr::opts_chunk$set(echo = TRUE)
#check if the package is already installed
 
if(!require(rbooli)){
    devtools::install_github("reinholdsson/rbooli")
  
}
#load the package
library(rbooli)
{% endhighlight %}
 
Next, lets call the API with the callerId and privateKey we received from Booli:
 

{% highlight r %}
knitr::opts_chunk$set(
	echo = TRUE,
	message = TRUE,
	warning = TRUE
)
#you will need to get your own key; I am just posting the code here, but am excluding my key
 
a <- booli("rbooliblog", "UBmptOLYsZ1Zln**********luNP9TjWQ3c01m")
 
data <- a$get(path = "sold", q = "Stockholm", limit = 50)
 
head(data)
{% endhighlight %}
 
 
As you can see, there is plenty of data to mine.
 
And if there is data to mine, I have plenty of questions to ask. :)
 
 
 
 
Ditt callerId är: rbooliblog
Din privateKey är: UBmptOLYsZ1Zlnd7cUO796SZeyluNP9TjWQ3c01m
 
Du hittar hjälp för att komma igång här, ett bra tips kan vara att starta i vår API-utforskare för att bekanta dig med API:et.
