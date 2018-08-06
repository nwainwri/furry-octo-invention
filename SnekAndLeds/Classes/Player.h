//
//  Player.h
//  SnekAndLeds
//
//  Created by Nathan Wainwright on 2018-08-05.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property NSInteger currentSquare;
@property int currentRoll;
@property NSDictionary *gameLogic;
@property BOOL gameOver;
@property NSString *name;

-(instancetype)initWithName:(NSString*)name;

-(void)rollDice;

@end
