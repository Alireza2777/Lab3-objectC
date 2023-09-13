//
//  InputHandler.m
//  Lab 3
//
//  Created by Alireza Karimi on 2023-09-13.
//

#import "InputHandler.h"

@implementation InputHandler

+ (NSString *)getUserInput {
    char inputBuffer[255];
    fgets(inputBuffer, sizeof(inputBuffer), stdin);
    NSString *inputString = [NSString stringWithCString:inputBuffer encoding:NSUTF8StringEncoding];
    return [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

@end

