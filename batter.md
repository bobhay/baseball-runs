Baseball States and Run Expectancy
========================================================
author: Robert Hay
date: 18 July 2014
transition: rotate

The State of an Inning
========================================================
When a batter in a baseball game steps up to bat, we can describe the state of the inning with a description of the number of outs and the positions of any men on base. For example, "Runners on first and second with one out" or "No outs, no one on" (which is always the state of the inning for the first batter).

The app displays three checkboxes for indicating the runner(s) on base (first, second, and third), and three radio buttons for indicating the number of outs (zero, one, or two).


Run Expectancy
====================================================
Using historic records of baseball games, we can determine the probability that at least one run will be scored in the inning, given the state of the inning. For instance, it is evident that the probabilty of a run being scored is greater with a man on third and nobody out than with no one on base and two outs.

This probability is called 'Run Expectancy.' Of course, Run Expectancy only describes what happens "on average". Depending on the skill and luck of the batter, anything can happen. That's the beauty of baseball.

The Output of the App
===============================
Based on the input of the runner(s) on base checkboxes and the number of outs radio buttons, the app outputs the run expectancy.

It does this by selecting the data from the corresponding row and column of a data frame (shown on the next page). 

The data used is from all major league regular season games from 1950 through 2010. The run expectancy data was compiled by http://www.tangotiger.net using game data from http://www.retrosheet.org.

Run Expectancy 1950 - 2010
==========================================


```r
states <- read.csv("re1950-2010.csv")
states
```

```
  on_base zero_out one_out two_out
1       0   0.2734  0.1589 0.06787
2       1   0.4254  0.2719 0.12702
3      10   0.6246  0.4128 0.22670
4      11   0.6324  0.4246 0.23269
5     100   0.8370  0.6626 0.27407
6     101   0.8570  0.6488 0.28454
7     110   0.8533  0.6795 0.27959
8     111   0.8671  0.6663 0.32289
```
Use the app at https://bobhay.shinyapps.io/baseball-states/


