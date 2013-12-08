//
//  FizzBuzzTests.m
//  CodingKatas
//
//  Created by Michal Konturek on 21/11/2013.
//  Copyright (c) 2013 Michal Konturek. All rights reserved.
//

#import <XCTest/XCTest.h>

#define HC_SHORTHAND
#import <OCHamcrest/OCHamcrest.h>

#import "FizzBuzz.h"

@interface FizzBuzzTests : XCTestCase

@end

@implementation FizzBuzzTests

- (void)test_01_returns_01 {
    NSInteger input = 1;
    assertThat([FizzBuzz outputForInteger:input], equalTo(@"1"));
}

- (void)test_03_returns_fizz {
    NSInteger input = 3;
    assertThat([FizzBuzz outputForInteger:input], equalTo(@"Fizz"));
}

- (void)test_05_returns_buzz {
    NSInteger input = 5;
    assertThat([FizzBuzz outputForInteger:input], equalTo(@"Buzz"));
}

- (void)test_06_returns_fizz {
    NSInteger input = 6;
    assertThat([FizzBuzz outputForInteger:input], equalTo(@"Fizz"));
}

- (void)test_15_returns_fizzbuzz {
    NSInteger input = 15;
    assertThat([FizzBuzz outputForInteger:input], equalTo(@"FizzBuzz"));
}

@end
