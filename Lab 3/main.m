//
//  main.m
//  Lab 3
//
//  Created by Alireza Karimi on 2023-09-01.
//
// chatgpt, stackover
#import <Foundation/Foundation.h>

// Function to generate a random integer between min and max (inclusive)
NSInteger generateRandomNumber(NSInteger min, NSInteger max) {
    return min + arc4random_uniform((uint32_t)(max - min + 1));
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL continuePlaying = YES;
        NSInteger score = 0;

        while (continuePlaying) {
            NSInteger num1 = generateRandomNumber(1, 10);
            NSInteger num2 = generateRandomNumber(1, 10);
            
            NSInteger correctAnswer = num1 + num2;
            
            NSLog(@"What is %ld + %ld?", (long)num1, (long)num2);
            
            // Get user input as a C string
            char input[10];
            fgets(input, sizeof(input), stdin);
            
            // Convert C string to NSString
            NSString *inputString = [NSString stringWithCString:input encoding:NSUTF8StringEncoding];
            
            // Remove newline character and whitespace from input
            NSString *cleanedInput = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            // Convert the cleaned input to an integer
            NSInteger userAnswer = [cleanedInput integerValue];
            
            // Check if the user's answer is correct
            if (userAnswer == correctAnswer) {
                NSLog(@"Right!");
                score++;
            } else {
                NSLog(@"Wrong! The correct answer is %ld.", (long)correctAnswer);
            }
            
            // Ask the user if they want to continue playing
            NSLog(@"Your score: %ld", (long)score);
            NSLog(@"Do you want to play again? (yes/no)");
            
            // Get user input for continuing the game
            fgets(input, sizeof(input), stdin);
            NSString *playAgain = [NSString stringWithCString:input encoding:NSUTF8StringEncoding];
            
            // Check if the user wants to continue playing
            if ([playAgain.lowercaseString isEqualToString:@"no\n"]) {
                continuePlaying = NO;
            }
        }
    }
    return 0;
}

