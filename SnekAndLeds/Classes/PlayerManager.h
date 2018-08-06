//
//  PlayerManager.h
//  SnekAndLeds
//
//  Created by Nathan Wainwright on 2018-08-05.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface PlayerManager : NSObject

@property NSMutableArray *players;
@property NSInteger currentIndex; //current player index

- (void)createPlayers:(NSInteger)setPlayers;

- (Player *)managerRoll;

- (void)managerOutput;




@end
