//
//  MathOperationFactory.h
//  Lab 3
//
//  Created by Alireza Karimi on 2023-09-13.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface MathOperationFactory : NSObject

+ (Question *)generateRandomQuestion;

@end


