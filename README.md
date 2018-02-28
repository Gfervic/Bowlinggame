Technical interview exercise for ChainGoTech

GAME DYNAMIC

We wabt you to create a small program that wil calculate the score of a game of bowling. In bowling there are
10 frames with normally 2 rolls of the ball per frame. Each roll will knock down up to 10 pins if it is the frist roll and up to the remainder with the second roll. If the first roll knocks down all 10 pins it is marked as a Strike and the frame is finisihed. If the second roll knocks down the remainder of the 10 pins it is marked as a Spare. If not all 10 pins are knocked dow after two roll the frame is done and it moves on to the next frame. The only exception to this is the 10th frame which can have three rolls if the first roll is a strike or the second rolls result in a spare.

SCORING

You score a frame in one of three ways. First, if it is not a strike or a spare you simply add the two rolls togehter givign you the score for the frame. Second, if it is a spare then you add up the two rolls for the frame plus the next roll giving you the scorte for the frame. Third, if it is a strike then you add up the two rolls for the frame plus the next two rolls giving you the score for the frame. The scorte for the game is simplu the sum of each frame´s calculated score.

EXPECTED

We want you to create a program that will take an input of rolls for a given game and calculate the score for each frame and for the game. We want this to be object oriented in some way. You can assume that all inputs will be valid and that there will not be more than 10 frames. Test should be written to ensure code works as expected. Write in whatever language you feel most comfortable but let us know the best way to run it.

Example input

[
[1,2],
[10,nil],
[5,4],
[7,3],
[10,nil],
[10,nil],
[1,4],
[6,2],
[7,3],
[10,3,7],
]

Example output

Frame scores: 3, 19, 9, 20, 21, 15, 5, 8, 20, 20
Game score: 140
