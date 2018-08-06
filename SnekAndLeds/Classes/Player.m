//
//  Player.m
//  SnekAndLeds
//
//  Created by Nathan Wainwright on 2018-08-05.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init
{
    self = [super init];
    if (self) {
        // ledds; lowKey to highValue
        // sneks; highKey to lowValue
        _gameLogic = @{//@"footLadder": @"topLadder",
                       @4:@14,
                       @9:@31,
                       @20:@38,
                       @28:@84,
                       @40:@59,
                       @51:@67,
                       @63:@81,
                       //@"snakeHead": @"snakeTail",
                       @17:@7,
                       @64:@60,
                       @89:@26,
                       @95:@75,
                       @99:@78
                       };
        _currentRoll = 0;
        _currentSquare = 0;
        _gameOver = NO;
    }
    return self;
}

-(void)rollDice{
    //never seems to pop out a '6' roll
    self.currentRoll = arc4random_uniform(6)+1; // INTEGER MUST BE WRAPPED IN NSNUMBER
    self.currentSquare = self.currentSquare + self.currentRoll;
    NSNumber *square = [NSNumber numberWithInt:self.currentSquare];
    
    if (self.currentSquare >= 100) {
        NSLog(@"|    YOU WON SNEKS AND LEDDS!");
        _gameOver = YES;
    }
    if ([self.gameLogic objectForKey:square]) {
        NSNumber *adjustedSquare = [self.gameLogic objectForKey:square];
        NSLog(@"|    YOU FOUND A SNEK OR LEDD %@", adjustedSquare);
        self.currentSquare = [adjustedSquare integerValue];
    }
}

// NSNumber *yourNumber = [NSNumber numberWithInt:your_int_variable];  https://forums.macrumors.com/threads/converting-an-int-into-an-nsnumber-then-saving-to-an-array.547952/

@end
