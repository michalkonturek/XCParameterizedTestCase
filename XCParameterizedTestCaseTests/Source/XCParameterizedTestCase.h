//
//  XCParameterizedTestCase.h
//  XCParameterizedTestCase
//
//  Created by Michal Konturek on 07/12/2013.
//  Copyright (c) 2013 Michal Konturek. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface XCParameterizedTestCase : XCTestCase

+ (void)addTestCaseWithInput:(id)input
               expectedValue:(id)expected toTestSuite:(XCTestSuite *)testSuite;

@property (nonatomic, strong) id input;
@property (nonatomic, strong) id expectedValue;

- (instancetype)initWithInvocation:(NSInvocation *)invocation
                         withInput:(id)input
                     expectedValue:(id)expected;

@end
