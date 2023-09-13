//
//  main.m
//  Lab 3
//
//  Created by Alireza Karimi on 2023-09-01.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "MathOperationFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        NSMutableArray *questions = [NSMutableArray array];

        while (gameOn) {
            Question *question = [MathOperationFactory generateRandomQuestion];
            NSLog(@"Question: %@", question.question);

            // Handle user input and scoring as before

            [questions addObject:question];
        }

        // Calculate and display total playtime and average time
        NSTimeInterval totalPlaytime = 0;
        for (Question *question in questions) {
            totalPlaytime += [question timeToAnswer];
        }
        NSTimeInterval averageTime = totalPlaytime / questions.count;
        NSLog(@"Total time: %.0fs, Average time: %.0fs", totalPlaytime, averageTime);
    }
    return 0;
}
