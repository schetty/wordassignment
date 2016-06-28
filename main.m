//
//  main.m
//  wordassignment
//
//  Created by naomi schettini on 2016-06-27.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char inputChars[255];
        
        printf("Input a String:");
        fgets(inputChars, 255, stdin);
        
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        
//        inputString = [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
//        
//        inputString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
//        
//        if ([inputString hasSuffix:@"?"]) {
//            NSLog(@"I don't know");
//        } else if ([inputString hasSuffix:@"!"]){
//            NSLog(@"Whoa, calm down!");
//        }
//        else {
//            NSLog(@"ok");
//        }
        
        NSString *loudString = [inputString uppercaseString];

//        NSString *quietString = [inputString lowercaseString];
//        
//        NSString *canadianize = [inputString stringByAppendingString:(@"eh")];
    
        NSLog(@"Input was %@ ", loudString/*,canadianize*/);
        
//        NSLog(@" and %@  %@", quietString, canadianize);


//        
//       double myDouble = [inputString doubleValue];
//        
//        NSLog(@"input was %f %@", myDouble, canadianize);
//        
        
        
        
        printf("Your string says %s \n", inputChars);
        
//        NSLog(@"Input was: %@ %@", inputString, canadianize);
    }
    return 0;
}
