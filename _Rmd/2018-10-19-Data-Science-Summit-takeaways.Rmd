---
layout: post
title: Data Science Summit takeaways
author: Feodor Georgiev
published: true
status: publish
draft: false
tags: R Jupyter notebooks RStudio research 
---
 
 
 
 
<p class=MsoNormal><b><i>Key takeaway #1</i></b>: always pay attention to what
the rules are and use your imagination.</p>
 
<p class=MsoListParagraphCxSpFirst>The cost and resource optimization, lead by
example – one of the sponsors of the conference were giving Rubik’s cubes away.
When I approached them and took one, they asked me if I could fix it. “Sure”, I
said, “but it depends on what tools are allowed to be used. ” </p>
 
<p class=MsoListParagraphCxSpMiddle>At first this answer generated a bit of
confusion, but then it all got fairly clear when I used brute force to dismantle
the cube and its pieces and when I started to put them back together in order. </p>
 
<p class=MsoListParagraphCxSpMiddle>And this is what I call “cost and resource
optimization”. If it would take me 10 minutes to fix it by computing the
sequence of moves, compared to two minutes to dismantle it and fix it, then
obviously it is more efficient to take the brute force approach. In both cases
there is some time and effort connected to computations; in the first case,
however, the computational power needs to be a lot bigger since the problem is
much more complex (i.e. there are quite a few possible moves deriving from each
stage) and in the second case, the need for computational power is fairly low
because there is just a pattern matching needed to find the right piece and
paste it to the right surrounding colors (very few possible moves deriving from
each stage).</p>
 
<p class=MsoListParagraphCxSpMiddle>This is a very important point in the daily
life of any data scientist, data engineer, and AI / ML worker. </p>
 
<p class=MsoListParagraphCxSpMiddle>As long as there are no limitations on the
tools to be used, make sure you use the simplest and most efficient. </p>
 
<p class=MsoListParagraphCxSpLast>And in this case, there weren’t. </p>
 
<p class=MsoNormal>&nbsp;</p>
 
<p class=MsoNormal><b><i>Key takeaway #2</i></b>: when you see some technology becoming
generally available, consider that the key competitive advantage tools have
evolved and this is what makes it generally available. Ask yourself – where is
the key competitive advantage <b>now</b>, and what is the trend <b>now</b>.</p>
 
<p class=MsoListParagraphCxSpFirst>&nbsp;</p>
 
<p class=MsoListParagraphCxSpMiddle>The old news – all vendors were offering
webcam protection. </p>
 
<p class=MsoListParagraphCxSpMiddle>&nbsp;</p>
 
<p class=MsoListParagraphCxSpMiddle>It is funny and a bit cynical, especially
IBM – weren’t they the NSA’s biggest partner? Or am I wrong.</p>
 
<p class=MsoListParagraphCxSpMiddle>Snowden happened 5 years ago, no
significant change in the public’s mindset happened because of that. Most
importantly, since then the technology has improved so much that only few use
the old-tech face recognition.</p>
 
<p class=MsoListParagraphCxSpMiddle>&nbsp;</p>
 
<p class=MsoListParagraphCxSpMiddle>The rule is that when something becomes
generally available and mainstream, that means that innovation has moved
forward and much better methods are available somewhere, somehow. The important
note is that almost everything that is profitable or important is kept as a
secret or in some way exclusive. </p>
 
<p class=MsoListParagraphCxSpMiddle>Of course, face recognition is not out of
business yet, it is still an important part of Facebooks, Google’s and many PR
companies’ business models. The user’s preferences, likes and dislikes are
gathered and analysed by the stream of data coming from the precious webcam
which is facing each well-connected user. All phones, laptops and devices are
looking at the user, face wrinkles and eyes movements are analysed and data is
turned into insights on personal preferences. User needs and preferences gets
bundled and sold to marketing agencies and distributed for further user
targeting. There is nothing unusual in this, companies have been trying to get
competitive advantage from web cams and face recognition for at least 10 years.
But this is old news. </p>
 
<p class=MsoListParagraphCxSpMiddle>Nowadays we get much more sophisticated
technology to uniquely identify users and gather their preferences. </p>
 
<p class=MsoListParagraphCxSpLast>This is a completely different topic,
however. Just keep in mind the fact that nothing exclusive is public knowledge.</p>
 
<p class=MsoNormal>&nbsp;</p>
 
<p class=MsoNormal><b><i>Key takeaway #3</i></b>: think a lot before doing data
science and machine learning. A proper sensor and data collection design will
go a long way. Otherwise you will be trying to productionalize a monster. </p>
 
<p class=MsoNormal>&nbsp;</p>
 
<p class=MsoListParagraphCxSpFirst>&nbsp;</p>
 
<p class=MsoListParagraphCxSpMiddle>The AI / ML modelling vs. smart product
design – Hitachi Pentaho had an interesting presentation about their trains and
how they reduce delays by running a huge deal of high end computing and data modelling.
</p>
 
<p class=MsoListParagraphCxSpMiddle>The use case: the stuck train doors are the
#1 cause of delays for commuter trains. So Hitachi make a great deal modelling on
data with a lot of features to predict the doors being stuck and thus do
predictive maintenance. </p>
 
<p class=MsoListParagraphCxSpMiddle>This is all great news, but when I talked
to them it turned out that the door sensor was a very simple binary sensor,
i.e. “door closed-door opened” type. To me this seems quite silly, because you
will be doing quite some heavy data lifting and looking  for predictors in all
places before you realize that your model would be trivial if you had the data
in a more sophisticated format, for example, who when and how are actually
forcing the doors. </p>
 
<p class=MsoListParagraphCxSpMiddle>In reality, anyone who has been on a train
knows that people tend to run for trains that are about to leave and they
squeeze themselves in. It is not a surprise that those doors are the first
candidates for failures. </p>
 
<p class=MsoListParagraphCxSpMiddle style='margin-left:90.0pt;text-indent:-18.0pt'>-<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>Yes, said Hitachi, but we don’t have that data. </p>
 
<p class=MsoListParagraphCxSpMiddle style='margin-left:90.0pt;text-indent:-18.0pt'>-<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>Yes, said I, but there are several options: </p>
 
<p class=MsoListParagraphCxSpMiddle style='margin-left:126.0pt;text-indent:
-18.0pt'><span style='font-family:"Courier New"'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span></span>You can do a lot of data lifting as you do now</p>
 
<p class=MsoListParagraphCxSpMiddle style='margin-left:126.0pt;text-indent:
-18.0pt'><span style='font-family:"Courier New"'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span></span>You could install a better sensor, something that should have
been there to start with, especially if you have the luxury to be building your
own hardware from scratch. In fact, you missed an important detail during the
hardware design phase.</p>
 
<p class=MsoListParagraphCxSpMiddle style='margin-left:126.0pt;text-indent:
-18.0pt'><span style='font-family:"Courier New"'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span></span>Also, the data is readily available – when someone forces a door <b>there
is</b> at least one device which is loaded with sensors that are fully capable
of detecting all kinds of details about the event. Yes, I am talking about the
mobile device of the person who forces the door! And most of the time you have
plenty of other devices with cameras and sound capabilities which are recording
the event (other passengers, holding their mobile devices up, ignorantly
looking at the success story of someone forcing a door to squeeze in). Of
course, this data is not easily accessible, and it is owned by someone else,
but I guess it might be worth asking them. The important point is that the data
is available somewhere. </p>
 
<p class=MsoListParagraphCxSpLast style='margin-left:126.0pt;text-indent:-18.0pt'><span
style='font-family:"Courier New"'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span></span>Also, there is a microphone for emergency purposes by each door.
That microphone is fully capable of giving just about enough information about
when and how the door was forced. </p>
 
<p class=MsoNormal style='margin-left:36.0pt'>So the bottom line is that if you
have a clumsy design to begin with, you will be doing plenty of data science
later. Which is good for the economy in the end, I mean data scientists need to
get paid. But also they might use their time to solve better problems somewhere
else. </p>
 
<p class=MsoNormal style='margin-left:36.0pt'>Just as a recap, at a famous game
company years ago there was a dedicated team of people driving exactly this – making
sure that the data points collected from the code are useful and properly set <b>BEFORE</b>
the code goes to production. And no wonder the game was a top seller for years.
</p>
 
<p class=MsoNormal>&nbsp;</p>
 
<p class=MsoNormal><b><i>Key takeaway #4</i></b>: social engineering, anyone? The
missing puzzle bits in the AI / ML industry - social engineering topics were
nowhere to be seen or heard. But why?  </p>
 
<p class=MsoNormal>&nbsp;</p>
 
<p class=MsoListParagraphCxSpFirst>I was amazed that I could not find a single
person in the lobby who was ready to talk about social engineering or even
about social psychology. After all, there were hundreds of people who work with
data, but some hadn’t even heard of social physics. </p>
 
<p class=MsoListParagraphCxSpMiddle>Hm. Strange. </p>
 
<p class=MsoListParagraphCxSpMiddle>This makes me think that these conferences
are there to repeat and distribute old news and to mostly promote technology
bits. I guess rarely something essential will pop up at a conference.
Innovation is somewhere else. </p>
 
<p class=MsoListParagraphCxSpMiddle>&nbsp;</p>
 
<p class=MsoListParagraphCxSpMiddle>It just puzzles me that guilds of AI / ML
and data scientists are available to tackle any problem, but those people are
lacking understanding of what data does and what the mechanisms are for data to
impact societies, groups and opinions. </p>
 
<p class=MsoListParagraphCxSpMiddle>&nbsp;</p>
 
<p class=MsoListParagraphCxSpMiddle>How big data affects societies and
democracy is a whole different topic. I would just encourage data people to be
responsible and to read up on social psychology as much as possible. </p>
 
<p class=MsoListParagraphCxSpMiddle>&nbsp;</p>
 
<p class=MsoListParagraphCxSpLast>&nbsp;</p>
 
<p class=MsoNormal>&nbsp;</p>
 
