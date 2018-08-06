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
        
        while (gameOn == YES){
            Player *currentPlayer = [playerManager managerRoll];
            NSLog(@"|   Player: %@", currentPlayer.name);
            // how to refactor this code INTO PLAYER.M....
            if (currentPlayer.currentSquare >= 100){
                NSLog(@"|    YOU WON SNEKS AND LEDDS!");
                gameOn = NO;
                break;
            }
            NSString *userAnswerString = [inputHandler userInputForPrompt:@"|   [r] [q] ==>  "];
            
            if ([userAnswerString isEqualToString:@"r"]) {
                [currentPlayer rollDice];
                NSLog(@"|    Current:[ %ld ] Roll:[ %d ]", (long)currentPlayer.currentSquare, currentPlayer.currentRoll);
            }
//            refactor ABOVE code
            if ([userAnswerString isEqualToString:@"q"]) {
                NSLog(@"Hope You Had Fun!");
                gameOn = NO;
            }
        } // GAME LOOP
    }
    return 0;
}
