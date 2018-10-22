---
layout: post
title: Key takeaways from the Nordic data science and machine learning summit 2018
author: Feodor Georgiev
published: true
status: publish
draft: false
tags: R Jupyter notebooks RStudio research 
---
 
 
<b>Key takeaway #1</b>: always keep in mind what the goal is and use your imagination when it comes to cost and resource optimization.
 
One of the sponsors of the conference were giving Rubik’s cubes away. When I approached them and took one, they asked me if I could fix it. “Sure”, I said, “but it depends on what tools are allowed to be used.” 
 
At first this answer generated a bit of confusion, but then it all got fairly clear when I used brute force to dismantle the cube and its pieces and then I started to put them back together in order. 
 
And this is what I call “cost and resource optimization”. If it would take me 10 minutes to fix it by computing the sequence of moves, compared to two minutes to dismantle it and rebuild it, then obviously it is more efficient to take the brute force approach. 
 
In both cases there is some time and effort connected to computations; in the first case, however, the computational power needs to be a lot greater since the problem is much more complex (i.e. there are quite a few possible moves deriving from each stage) and in the second case, the need for computational power is fairly low because there is just a pattern matching needed to find the right piece and paste it to the right surrounding context (very few possible moves deriving from each stage).
 
This is a very important point in the daily life of any data scientist, data engineer, and AI / ML worker: as long as there are no limitations on the tools and approaches to be used, make sure you use the simplest and most efficient ones to reach your goal. 
 
And in this case, there weren’t set limitations. 
 
 
<b>Key takeaway #2</b>: when you see some technology becoming generally available, consider that the key tools that give it a competitive advantage have evolved and this is what makes this technology generally available. Ask yourself: where is the key competitive advantage now and what is the trend now.
 
For example, all sponsors at the summit were offering webcam protection devices.It is funny and a bit cynical, especially IBM – weren’t they NSA’s biggest partner? Or am I wrong? Snowden happened 5 years ago, however no significant change in the public’s mindset happened because of that. Most importantly, since then the technology has improved so much that only few entities rely entirely on the old-tech face recognition.
 
The rule is that when something becomes generally available and mainstream, that means that innovation has moved forward and much better methods are available somewhere else, somehow. The important note is that almost everything that is profitable or important is kept as a secret or in some way exclusive. 
 
Of course, face recognition is not out of business yet, it is still an important part of Facebook's, Google’s and many PR companies’ business models. The users' preferences, likes and dislikes are gathered and analysed by the stream of data coming from the precious webcam which is facing each well-connected user. All phones, laptops and devices are looking at the user, face wrinkles and eyes movements are analysed and data is turned into insights on personal preferences. User needs and preferences get bundled and sold to marketing agencies and distributed for further user targeting. There is nothing unusual in this, companies have been trying to get competitive advantage from web cams and face recognition for at least 10 years. But this is old news. 
 
Nowadays we get much more sophisticated technology to uniquely identify users and gather their preferences. 
 
This is a completely different topic, however. Just keep in mind the fact that nothing exclusive is public knowledge. And you will rarely see or hear something exclusive, leading to a competitive advantage at a conference or a summit. You need to read between the lines and mix your own magic business potion. 
 
 
<b>Key takeaway #3</b>: The AI / ML modelling vs. smart product design: think a lot before doing data science and machine learning. A proper sensor and data collection design will go a long way. Otherwise you will be trying to productionalize a monster. 
 
 
For example, Hitachi Pentaho had an interesting presentation about their trains and how they reduce delays by running a huge deal of high end computing and data modelling. (Just to clarify: this takeaway is not aimed at Hitachi in any way; I am sure they are doing what they can to solve a challenge. I am using their use case because it is much simpler to understand than other very similar cases I have encountered while working on predictive maintenance projects.)
 
The use case: the malfunctioning train doors are the #1 cause of delays for commuter trains. The people at Hitachi do a great deal of modelling on data with a lot of variables in order to predict which doors will malfunction and thus avoid costly delays by doing maintenance accordingly. 
 
This is all great news, but when I talked to them it turned out that the door sensor was a very simple binary sensor, i.e. “door closed-door opened” type. To me this seems quite limited, because you will be doing quite some heavy data lifting and looking for predictors in all places before you realize that your model would be trivial if you had the data in a more sophisticated format; for example, who, when and how is actually forcing or obstructing the doors. 
 
In reality, anyone who has been on a train knows that people tend to run for trains that are about to leave and they try to squeeze themselves in. It is not a surprise that those doors are the first candidates for failures. 
 
-	Yes, said Hitachi, but we don’t have that data. 
-	Yes, said I, but there are several options: 
 
---	You can do a lot of data lifting as you do now
 
---	You could install a better sensor, something that should have been there to start with, especially if you have the luxury to be building your own hardware from scratch. In fact, I believe this should have been considered during the hardware design phase.
 
 
---	the data is readily available – when someone forces a door there is at least one device which is loaded with sensors that are fully capable of detecting all kinds of details about the event. Yes, I am talking about the mobile device of the person who forces the door! Most of the time you have plenty of other devices with cameras and sound capabilities which are recording the event (other passengers, holding their mobile devices up, passively looking at the success story of someone forcing a door to squeeze in). Of course, this data is not easily accessible, and it is owned by someone else, but I guess it might be worth asking them. The important point is that the data is available somewhere. 
 
---	there is a microphone for emergency purposes by each door. That microphone is fully capable of giving just about enough information on when and how the door was forced. 
The bottom line is that if you have a clumsy design to begin with, you will be doing plenty of data science later.
 
Which is good for the economy in the end, I mean data scientists need to get paid. On the other hand, however, they could use their time to solve more urgent problems somewhere else. 
 
To mention another example related to this, at a famous game company years ago there was a dedicated team of people driving exactly this – making sure that the data points collected from the code are useful and properly set BEFORE the code goes to production. And no wonder the game was a top seller for years. 
 
 
<b>Key takeaway #4</b>: social engineering, anyone? The missing puzzle bits in the AI / ML industry - social engineering topics - were nowhere to be seen or heard. But why?  
 
I was amazed that I could not find a single person in the lobby who was game to talk about social engineering or even about social psychology. There were hundreds of people who work with data, but some hadn’t even heard of social physics. 
 
This makes me think that these conferences are there to to mostly promote technology bits and vendors and in that process to repeat and distribute old news. I am starting to believe that rarely something essential will pop up at a conference. Innovation is somewhere else. 
 
It just puzzles me that guilds of AI / ML and data scientists are available to tackle any problem, but those people are lacking understanding of what data does and what the mechanisms are for data to impact societies, groups and opinions. 
 
How big data affects societies and democracy is a whole different topic. I would just encourage data people to be responsible and to read up on social psychology as much as possible. 
 
 
The summit was great, though. Great networking, great people and great food! 
