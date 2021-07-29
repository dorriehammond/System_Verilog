# Remote Learning: The SystemVerilog Game
Link: https://www.edaplayground.com/x/FGv_

## Description:
Play this game if you want to experience a day in the life of a remote college student living with their parents in Fall 2020.  To win the game, your goal is to earn enough motivation so you can get all your homework done.  In this game you can enjoy things like showering, checking canvas, being on your phone for hours, and more.  You can explore places like your bedroom, your desk, and the outside!  This game is only partially based off my real life 

## How to win:
You need to earn motivation through doing different activities, like showering, eating/drinking water, going outside, taking a nap, talking to your friends, watching fun videos, and going to class.  I have it set up so that you can win by only doing about half the activities.  (The amount of motivation needed to win can be found at line 73).  After you get enough motivation, you can successfully finish your homework and win!

## How to lose:
You can lose by either trying to do homework with an insufficient amount of motivation or scrolling through social media.

## Hints:
-	You can only do activities that give you motivation once
-	You can do activities in any order you choose
-	You’ll need to find a mask in order to go outside
  -	So maybe you should change out of your two-day old sweatpants first
-	The Decision key is: A=00 B=01 C=10 D=11
  -	If it seems like the game is not processing your ‘Decision,’ write it twice in a row (I think this may be because it needs to stay in that state for an extra clock cycle)
-	If you want to challenge yourself, you can try to earn all of the possible motivation, but this might take a while because my game has 21 different states
