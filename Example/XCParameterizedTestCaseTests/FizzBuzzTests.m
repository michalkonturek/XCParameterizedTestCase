//
//  FizzBuzzTests.m
//
//  Copyright (c) 2013 Michal Konturek
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import <XCTest/XCTest.h>

#import "XCParameterizedTestCase.h"
#import "FizzBuzz.h"

@interface FizzBuzzTests : XCParameterizedTestCase

@end

@implementation FizzBuzzTests

+ (NSArray *)testCaseData {
    return @[
             [XCTestCaseData createWithInputValue:@1 withExpectedValue:@"1"],
             [XCTestCaseData createWithInputValue:@3 withExpectedValue:@"Fizz"],
             [XCTestCaseData createWithInputValue:@5 withExpectedValue:@"Buzz"],
             [XCTestCaseData createWithInputValue:@6 withExpectedValue:@"Fizz"],
             [XCTestCaseData createWithInputValue:@15 withExpectedValue:@"FizzBuzz"]
             ];
}

- (void)test_fizbuzz {
    id result = [FizzBuzz outputForInteger:[self.input integerValue]];
    XCTAssertEqualObjects(self.expected, result, @"");
}

@end
