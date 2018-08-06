//
//  PlayerManager.m
//  SnekAndLeds
//
//  Created by Nathan Wainwright on 2018-08-05.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import "PlayerManager.h"


@implementation PlayerManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _players = [[NSMutableArray alloc] init];
        _currentIndex = 0;
    }
    return self;
}

- (void)createPlayers:(NSInteger)setPlayers{
    for (int i =0; i <= setPlayers; i++) {
        Player *player = [[Player alloc]initWithName:[NSString stringWithFormat:@"Player %d", i ]];
        [self.players addObject:player];
//        NSString *foo = [NSClassFromString(@"player")];
//        Player *(foo) = [[Player alloc] init];
    }
}

- (Player *)managerRoll{
    // get total number of players
    int totalPlayers = 0;
    totalPlayers = [self.players count];
    
    
    
    
    //increments the currentIndex for which player
    // will return a Player* computed from currentIndex
    
    // use modulus operator?
    
    return 0;
}
- (void)managerOutput{
    
}

@end
