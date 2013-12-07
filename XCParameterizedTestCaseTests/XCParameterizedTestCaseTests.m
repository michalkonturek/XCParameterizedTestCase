//
//  XCParameterizedTestCaseTests.m
//  XCParameterizedTestCaseTests
//
//  Created by Michal Konturek on 06/12/2013.
//  Copyright (c) 2013 Michal Konturek. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface XCParameterizedTestCaseTests : XCTestCase

@property (nonatomic, strong) id input;
@property (nonatomic, strong) id expectedValue;

@end

@implementation XCParameterizedTestCaseTests


+ (id)defaultTestSuite {
    XCTestSuite *suite = [[XCTestSuite alloc] initWithName:NSStringFromClass(self)];
    
    [self addTestCaseWithInput:@1 expectedValue:@0 toTestSuite:suite];
    [self addTestCaseWithInput:@2 expectedValue:@1 toTestSuite:suite];
    [self addTestCaseWithInput:@3 expectedValue:@1 toTestSuite:suite];
    [self addTestCaseWithInput:@4 expectedValue:@1 toTestSuite:suite];
    
    return suite;
}

+ (void)addTestCaseWithInput:(id)input
               expectedValue:(id)expected toTestSuite:(XCTestSuite *)testSuite {
    
    for (id invocation in [self testInvocations]) {
        XCTestCase *test = [[self alloc] initWithInvocation:invocation
                                                  withInput:input expectedValue:expected];
        [testSuite addTest:test];
    }
}

- (instancetype)initWithInvocation:(NSInvocation *)invocation
                         withInput:(id)input
                     expectedValue:(id)expected {

    self = [super initWithInvocation:invocation];
    if (self) {
        _input = input;
        _expectedValue = expected;
    }
    
    return self;
}

- (void)testExample {
    NSInteger result = [self numberForInput:self.input];
    XCTAssertEqual(self.expectedValue, @(result), @"");
}

- (NSInteger)numberForInput:(id)input {
    if ([input integerValue] == 1) return 0;
    else return 1;
}

@end
