//
//  InputHandler.m
//  SnekAndLeds
//
//  Created by Nathan Wainwright on 2018-08-05.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

- (NSString *) userInputForPrompt: (NSString *) prompt {
    char inputChars[255];
    printf("%s", [prompt UTF8String]);
    fgets(inputChars, 255, stdin);
    NSString *inputwithEnter = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    NSString *finalInputString = [inputwithEnter stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet];
    return finalInputString;
}

@end
