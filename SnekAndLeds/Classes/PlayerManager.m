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
        // _players = 
    }
    return self;
}


- (void) createPlayers:(NSInteger)setPlayers{
    for (int i =0; i <= setPlayers; i++) {
        
        Player *player = [[Player alloc]initWithName:[NSString stringWithFormat:@"Player %d", i ]];
        [self.players addObject:player];
        
//        NSString *foo = [NSClassFromString(@"player")];
//        
//        Player *(foo) = [[Player alloc] init];
    }
}

@end
