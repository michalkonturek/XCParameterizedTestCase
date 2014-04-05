//
//  XCParameterizedTestCase.m
//  XCParameterizedTestCase
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
