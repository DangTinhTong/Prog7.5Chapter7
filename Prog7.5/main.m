//
//  main.m
//  Prog7.5
//
//  Created by admin on 11/30/17.
//  Copyright © 2017 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
       // NSLog(@"Hello, World!");
        
        
        Fraction *myFractionA = [[Fraction alloc] init];
        Fraction *myFractionB = [[Fraction alloc] init];
        
        Fraction *resultFraction;
        
        // Set 1s fraction to 1/4
        [myFractionA setTo:1 over:4];
        
        // Set 2sd fraction to 1/2
        [myFractionB setTo:1 over:2];
        
        [myFractionA print];
        NSLog(@"+");
        [myFractionB print];
        NSLog(@"=");
        
        resultFraction = [myFractionA add:myFractionB];
        [resultFraction print];
        
        [[myFractionA add:myFractionB ] print];
        
        
    }
    return 0;
}
