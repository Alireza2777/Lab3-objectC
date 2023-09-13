//
//  ScoreKeeper.m
//  Lab 3
//
//  Created by Alireza Karimi on 2023-09-13.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (NSString *)scoreString {
    NSInteger totalQuestions = self.correctAnswers + self.incorrectAnswers;
    NSInteger percentage = (self.correctAnswers * 100) / totalQuestions;

    return [NSString stringWithFormat:@"Score: %ld right, %ld wrong ---- %ld%%", self.correctAnswers, self.incorrectAnswers, percentage];
}

@end
