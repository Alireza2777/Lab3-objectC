//
//  Question.m
//  Lab 3
//
//  Created by Alireza Karimi on 2023-09-13.
//

#import "Question.h"

@implementation Question

- (instancetype)init {
    if (self = [super init]) {
        _startTime = [NSDate date];
        [self generateQuestion];
    }
    return self;
}

- (void)generateQuestion {
    // Implement this method in subclasses
}

- (NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval)timeToAnswer {
    return [self.endTime timeIntervalSinceDate:self.startTime];
}

@end

