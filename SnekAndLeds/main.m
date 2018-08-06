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

//STRETCH TECPluginGetCountAvailableSniffersPtr
//Allow the User to Restart
//Let's make our quit functionality a bit more fine grained. When the user inputs “quit”, instead of just exiting, ask if they would like to "quit" or "restart".
//
//If they want to restart, remove all objects from the PlayerManager’s players property. Then call continue. This should trigger a request for the number of players in a new game.
//
//If they say "quit" rather than "restart", then the app can call break to break from the while loop. Thank them.


//Make User Input Case Insensitive
//Make sure the input you accept from the user is case insensitive. Users should be able to input "Quit" "QUIt", etc and "Roll", "ROLl", etc.
//
//Look at the NSString documentation on how to get a lower case version of the input string. When you compare input strings to the expected input, compare a lower case version of the string. Test your work.
//
//Restarting a Won Game
//Add some logic to main.m that will start the game again once there is a winner. You can remove all players from the PlayerManager's players property to do this. Once there is a winner, trigger another iteration of the while loop using continue.

//Adding Score Functionality to PlayerManager
//Let's start by adding a score method to PlayerManager that returns an NSString*.
//
//Implement this method by looping through the array of players. Call the score method on each Player instance. The Player's score method should also return an NSString*.
//
//Notice how the manager passes the responsibility of generating the player output string to the Player instance.
//
//The manager assembles these score output pieces into a final output string. The player instance's score method should return the player's name and currentSquare.
//
//The score method inside PlayerManager will create an empty NSMutableString before the for loop. Inside the for loop, each player instance's score method will return its score string. Append this to the mutable string. Return the mutable string as an immutable string. You should do this because once you generate the final output string you will never need to mutate it.
//
//Let's call score on the PlayerManager instance inside main.m after each roll. Your output should now resemble this:

// SPOT ON COMPASS; ==> https://ios.compass.lighthouselabs.ca/days/w01e/activities/721
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
