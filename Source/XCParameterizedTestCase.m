//
//  XCParameterizedTestCase.m
//  XCParameterizedTestCase
//
//  Created by Michal Konturek on 07/12/2013.
//  Copyright (c) 2013 Michal Konturek. All rights reserved.
//

#import "XCParameterizedTestCase.h"

@implementation XCParameterizedTestCase

+ (id)defaultTestSuite {
    XCTestSuite *suite = [[XCTestSuite alloc] initWithName:NSStringFromClass(self)];
    
    for (XCTestFixture *fixture in [self fixtures]) {
        [self addTestCaseWithInput:fixture.input
                     expectedValue:fixture.expected
                       toTestSuite:suite];
    }
    
    return suite;
}

+ (NSArray *)fixtures {
    return @[];
}

+ (void)addTestCaseWithInput:(id)input
               expectedValue:(id)expected toTestSuite:(XCTestSuite *)testSuite {
    
    for (id invocation in [self testInvocations]) {
        XCTestCase *test = [[self alloc] initWithInvocation:invocation
                                                  withInput:input withExpected:expected];
        [testSuite addTest:test];
    }
}

- (instancetype)initWithInvocation:(NSInvocation *)invocation
                         withInput:(id)input
                      withExpected:(id)expected {
    
    self = [super initWithInvocation:invocation];
    if (self) {
        _input = input;
        _expected = expected;
    }
    
    return self;
}

@end
