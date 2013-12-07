//
//  XCParameterizedTestCase.h
//  XCParameterizedTestCase
//
//  Created by Michal Konturek on 07/12/2013.
//  Copyright (c) 2013 Michal Konturek. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "XCTestCaseData.h"

@interface XCParameterizedTestCase : XCTestCase

+ (void)addTestCaseWithInput:(id)input
               expectedValue:(id)expected toTestSuite:(XCTestSuite *)testSuite;

+ (NSArray *)fixtures;

@property (nonatomic, strong) id input;
@property (nonatomic, strong) id expected;

- (instancetype)initWithInvocation:(NSInvocation *)invocation
                         withInput:(id)input
                      withExpected:(id)expected;

@end
