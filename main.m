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
        
        NSString *loudString = [inputString uppercaseString];
        
        NSLog(@"Input was %@", loudString);
        
        printf("Your string says %s\n", inputChars);
        
        NSLog(@"Input was: %@", inputString);
    }
    return 0;
}
