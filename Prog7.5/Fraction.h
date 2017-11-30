//
//  Fraction.h
//  Prog7.5
//
//  Created by admin on 11/30/17.
//  Copyright © 2017 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

{
    int numerator;
    int denominator;
    
}

@property int numerator, denominator;
-(void) setTo: (int) n over: (int) d;
-(void) print;
-(void) reduce;
//-(void) add: (Fraction*)f;
-(Fraction*) add: (Fraction*)f;
-(double) convertToNum;
@end
