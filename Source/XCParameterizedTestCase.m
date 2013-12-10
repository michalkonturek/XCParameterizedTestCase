//
//  XCParameterizedTestCase.m
//  XCParameterizedTestCase
//
//  Created by Michal Konturek on 07/12/2013.
//  Copyright (c) 2013 Michal Konturek. All rights reserved.
//

#import "XCParameterizedTestCase.h"

#import "TestCaseData.h"

@implementation XCParameterizedTestCase

+ (id)defaultTestSuite {
    XCTestSuite *suite = [[XCTestSuite alloc] initWithName:NSStringFromClass(self)];
    
    for (id<TestCaseData> item in [self testCaseData]) {
        [self addTestCaseWithInput:item.input
                     expectedValue:item.expected
                       toTestSuite:suite];
    }
    
    return suite;
}

+ (NSArray *)testCaseData {
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

- (NSString *)name {
    NSInvocation *invocation = [self invocation];
    
    NSString *methodName = NSStringFromSelector(invocation.selector);
    if ([methodName hasPrefix:@"test"]) {
        return [NSString stringWithFormat:@"-[%@ %@_when_%@_returns_%@]",
                NSStringFromClass([self class]),
                NSStringFromSelector(invocation.selector),
                self.input,
                self.expected];
    }
    else {
        return [super name];
    }
}

@end
