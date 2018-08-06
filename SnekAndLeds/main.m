//
//  main.m
//  SnekAndLeds
//
//  Created by Nathan Wainwright on 2018-08-05.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Player.h"
#import "PlayerManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //varible declaration
        BOOL gameOn = YES;
        //declare objects
        InputHandler *inputHandler = [[InputHandler alloc] init];
        PlayerManager *playerManager = [[PlayerManager alloc] init];
        
        
        
        
        
        // Player *playerOne = [[Player alloc] init];
        // welcome user; instructions
        NSLog(@"---------------------------------------");
        NSLog(@"|   Welcome to Sneks and Leds:        |");
        NSLog(@"| First Player to 100, wins the game  |");
        NSLog(@"| Find the bottom of a Led, up you go |");
        NSLog(@"|  Land on a Snek head, down you go   |");
        NSLog(@"|   'r' is to roll ; 'q' is to quit   |");
        NSLog(@"---------------------------------------");
        NSString *userPlayers = [inputHandler userInputForPrompt:@"Number of Players?   "];
        
        int numberOfPlayers = [userPlayers intValue] - 1;
        [playerManager createPlayers:numberOfPlayers];
        
        while (2 > 1) {
            [playerManager managerRoll];
        }
        
        
        
//        // GAME LOOP
//        while (playerOne.gameOver == NO){
//            NSString *userAnswerString = [inputHandler userInputForPrompt:@"==>  "];
//            if ([userAnswerString isEqualToString:@"r"]) {
//                gameOn = YES;
//                [playerOne rollDice];
//                NSLog(@"|    Current:[ %ld ] Roll:[ %d ]", (long)playerOne.currentSquare, playerOne.currentRoll);
//                
//            }
//            if ([userAnswerString isEqualToString:@"q"]) {
//                NSLog(@"Hope You Had Fun!");
//                gameOn = NO;
//            }
//        } // GAME LOOP
    }
    return 0;
}
