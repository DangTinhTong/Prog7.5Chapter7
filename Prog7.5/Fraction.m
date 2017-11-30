//
//  Fraction.m
//  Prog7.5
//
//  Created by admin on 11/30/17.
//  Copyright © 2017 admin. All rights reserved.
//
/*
 @property int numerator, denominator;
 -(void) setTo: (int) n over: (int) d;
 -(void) print;
 -(void) reduce;
 -(void) add: (Fraction*)f;
 -(double) convertToNum;

 
 */
#import "Fraction.h"

@implementation Fraction
@synthesize numerator, denominator;
-(void) setTo:(int)n over:(int)d
{
    numerator = n;
    denominator = d;
}
-(void) print
{
    NSLog(@"%i/%i", numerator, denominator);
    
}
-(void) reduce

{
    int u = numerator;
    int v = denominator;
    int temp;
    while (v!=0)
        
    {
        temp = u%v;
        u=v;
        v=u;
        
    }
    
    numerator/=u;
    denominator/=u;
}
// Add a Fraction to the receiver
//-(void) add:(Fraction *)f
-(Fraction*) add: (Fraction*)f
{
    // To add two fraction
    // a/b+c/d =(a*d+b*c)/(b*d)
    Fraction *result =[[Fraction alloc]init];
   result.numerator = numerator*f.denominator+ denominator*f.numerator;
   result.denominator = denominator*f.denominator;
    [self reduce];
    return result;
}

-(double) convertToNum
{
    if(denominator!=0)
        return  (double) numerator/denominator;
    else
        return NAN;
}
@end
