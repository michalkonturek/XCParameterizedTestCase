//
//  XCParameterizedTestCase.m
//  XCParameterizedTestCase
//
//  Created by Michal Konturek on 07/12/2013.
//  Copyright (c) 2013 Michal Konturek. All rights reserved.
//

#import "XCParameterizedTestCase.h"

@implementation XCParameterizedTestCase

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

@end
