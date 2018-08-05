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
//        NSDictionary *sneksLeds = {
//                //ladders
//            
//        };
//        _currentRoll = 0;
        _currentSquare = 0;
    }
    return self;
}


-(void)rollDice{
    //never seems to pop out a '6' roll
    self.currentRoll = arc4random_uniform(6)+1;
    self.currentSquare = self.currentSquare + self.currentRoll;
//    return self.currentRoll;
}



//. NSNumber *yourNumber = [NSNumber numberWithInt:your_int_variable];  https://forums.macrumors.com/threads/converting-an-int-into-an-nsnumber-then-saving-to-an-array.547952/

@end
