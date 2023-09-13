//
//  ScoreKeeper.h
//  Lab 3
//
//  Created by Alireza Karimi on 2023-09-13.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (nonatomic) NSInteger correctAnswers;
@property (nonatomic) NSInteger incorrectAnswers;

- (NSString *)scoreString;

@end
