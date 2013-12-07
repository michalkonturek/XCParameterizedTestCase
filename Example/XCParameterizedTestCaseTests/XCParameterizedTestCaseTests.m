//
//  XCParameterizedTestCaseTests.m
//  XCParameterizedTestCaseTests
//
//  Created by Michal Konturek on 06/12/2013.
//  Copyright (c) 2013 Michal Konturek. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "XCParameterizedTestCase.h"

@interface XCParameterizedTestCaseTests : XCParameterizedTestCase

@end

@implementation XCParameterizedTestCaseTests

+ (NSArray *)fixtures {
    return @[
             [XCTestFixture createWithInputValue:@1 withExpectedValue:@0],
             [XCTestFixture createWithInputValue:@2 withExpectedValue:@1],
             [XCTestFixture createWithInputValue:@3 withExpectedValue:@1],
             [XCTestFixture createWithInputValue:@4 withExpectedValue:@1]
             ];
}

- (void)testExample {
    NSInteger result = [self numberForInput:self.input];
    XCTAssertEqual(self.expected, @(result), @"");
}

- (NSInteger)numberForInput:(id)input {
    if ([input integerValue] == 1) return 0;
    else return 1;
}

@end
