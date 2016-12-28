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
#check if the package is already installed
 
if(!require(rbooli)){
    devtools::install_github("reinholdsson/rbooli")
  
}
#load the package
library(rbooli)
{% endhighlight %}
 
Next, lets call the API with the callerId and privateKey we received from Booli:

 
 

{% highlight r %}
#you will need to get your own key; I am just posting the code here, but am excluding my key
#a <- booli("your_callerId", "your_privateKey")
 
data <- a$get(path = "sold", q = "Stockholm", limit = 10)
 
head(data[1:3])
{% endhighlight %}



{% highlight text %}
##   location.address.streetAddress location.position.latitude
## 1            Filipstadsbacken 58                   59.23780
## 2             Svandammsvägen 17A                   59.30129
## 3                 Heklagatan 66E                   59.41258
## 4               Sällhetsvägen 24                   59.38334
## 5              Västmannagatan 69                   59.34350
## 6                   Sveavägen 39                   59.33737
##   location.position.longitude
## 1                    18.10476
## 2                    18.01362
## 3                    17.93736
## 4                    17.82506
## 5                    18.04562
## 6                    18.06143
{% endhighlight %}
 
 
The query above sends a request to the API to return 10 properties that were sold in the Stockholm region. 
 
The API allows three different paths: listings, sold and areas. The first one is for properties on the market, the second is for sold properties, and the third is for searching a specific area. 
 
The parameters for the API are listed int the documentation here: [https://www.booli.se/api/reference](https://www.booli.se/api/reference) 
 
Lets test if the rbooli package can get other parameters, for example, can we get all properties listed on the December 20th, 2016 which have maximum price of 4 million SEK: 
 
 

{% highlight r %}
#you will need to get your own key; I am just posting the code here, but am excluding my key
 
# the date parameters are exluding the values, so if you want to get the Dec 20th, you need to do a range between 19th to the 21st to get the 20th. This is how the API is developed, I guess. 
 
data1 <- a$get(path = "listings", q = "Stockholm", minPublished="2016-12-19", maxPublished="2016-12-21",maxListPrice = "4000000", limit = 50)
 
head(data1[1:3])
{% endhighlight %}



{% highlight text %}
##   booliId listPrice  published
## 1 2179831   3180000 2016-12-20
## 2 2229873   2995000 2016-12-20
## 3 2230662   3795000 2016-12-20
## 4 2230095   1895000 2016-12-20
## 5 2232804   1495000 2016-12-20
## 6 2232781   3450000 2016-12-20
{% endhighlight %}
 
 
As you can see, there is plenty of data to mine. There is geolocation, price, housing type, area and so on. 
 
And if there is data to mine, I have plenty of questions to ask. :)
 
In my next post I will explore some ways to collect data from the API and to visualize trends. For example, I would be curious to see the selling price of properties for a specific area for the past 3 years and how the trend is per property type. 
 
 
