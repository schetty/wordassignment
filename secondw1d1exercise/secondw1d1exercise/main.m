//
//  main.m
//  secondw1d1exercise
//
//  Created by naomi schettini on 2016-09-05.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char inputChars [255];
        
        printf("Input a String = ");
        fgets(inputChars, 255, stdin);
        
        printf("your string is %s", inputChars);
        
        //converts the C level chars into a NSObject string
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        inputString = [inputString stringByReplacingOccurrencesOfString:(@"\n") withString:(@" ")];

        NSString *uppercaseVersion = [inputString uppercaseString];
        NSString *lowercaseVersion = [inputString lowercaseString];
        NSString *canadianized = [inputString stringByAppendingString:@"eh"];
        double numberVersion = [inputString doubleValue];

        
    
        
        NSLog(@"input was %@\n", inputString);
        
        NSLog(@"your input was %@", uppercaseVersion);
        
        NSLog(@"your input was %@", lowercaseVersion);
        
        NSLog(@"your input was %f", numberVersion);
        
        NSLog(@"your input was %@ \n", canadianized);
        
        

        
        NSArray *wordCountArray = [inputString componentsSeparatedByString:@" "];
        NSUInteger wordCount = (wordCountArray.count - 1);
        
        
        NSLog(@"number of words is: %lu", wordCount);
        
        inputString = [inputString stringByReplacingOccurrencesOfString:(@" ") withString:(@"-")];
        
        NSLog(@"your input was %@", inputString);
    }
    return 0;
}
