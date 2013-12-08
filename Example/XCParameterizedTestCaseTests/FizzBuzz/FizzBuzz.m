//
//  FizzBuzz.m
//  CodingKatas
//
//  Created by Michal Konturek on 21/11/2013.
//  Copyright (c) 2013 Michal Konturek. All rights reserved.
//

#import "FizzBuzz.h"

@implementation FizzBuzz

+ (NSString *)outputForInteger:(NSInteger)integer {
    
    NSMutableString *result = [NSMutableString string];
    
    if ([self isNumberMultipleOf_03:integer]) [result appendString:@"Fizz"];
    if ([self isNumberMultipleOf_05:integer]) [result appendString:@"Buzz"];
    if ([result length] == 0) [result appendString:[@(integer) description]];
    
    return result;
}

+ (BOOL)isNumberMultipleOf_05:(NSInteger)number {
    return ((number % 5) == 0);
}

+ (BOOL)isNumberMultipleOf_03:(NSInteger)number {
    return ((number % 3) == 0);
}

@end
