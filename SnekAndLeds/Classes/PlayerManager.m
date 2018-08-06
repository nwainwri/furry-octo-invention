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
    NSUInteger totalPlayers = [self.players count];
    self.currentIndex = self.currentIndex + 1;
    
//    To do this I would like you to use the modulus operator. currentIndex should just keep
//    incrementing by 1 for each roll. The method currentPlayer will compute the array index
//    using 3 things. The modulus operator, the currentIndex and the count of the players array.
    
    long nextPlayer = self.currentIndex % totalPlayers;
    
    //increments the currentIndex for which player
    // will return a Player* computed from currentIndex
    
    // use modulus operator?
    
    return self.players[nextPlayer];
}
- (void)managerOutput{
    
}

@end
