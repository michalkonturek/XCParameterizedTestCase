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

+ (NSArray *)testCaseData {
    return @[
             [XCTestCaseData createWithInputValue:@1 withExpectedValue:@0],
             [XCTestCaseData createWithInputValue:@2 withExpectedValue:@1],
             [XCTestCaseData createWithInputValue:@3 withExpectedValue:@1],
             [XCTestCaseData createWithInputValue:@4 withExpectedValue:@1],
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
