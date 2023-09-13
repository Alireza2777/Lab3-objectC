//
//  MathOperationFactory.m
//  Lab 3
//
//  Created by Alireza Karimi on 2023-09-13.
//

#import "MathOperationFactory.h"
#import "AdditionQuestion.h" // Import other math operation classes here

@implementation MathOperationFactory

+ (Question *)generateRandomQuestion {
    NSInteger randomOperation = arc4random_uniform(4); // 0: addition, 1: subtraction, 2: multiplication, 3: division
    Question *question;

    switch (randomOperation) {
        case 0:
            question = [[AdditionQuestion alloc] init];
            break;
        // Add cases for other math operations here

        default:
            break;
    }

    return question;
}

@end

