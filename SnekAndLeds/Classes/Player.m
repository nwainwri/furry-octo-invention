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
        _currentRoll = 0;
    }
    return self;
}


-(int)rollDice{
    //never seems to pop out a '6' roll
    self.currentRoll = self.currentRoll + arc4random_uniform(6)+0;
    return self.currentRoll;
}

@end
