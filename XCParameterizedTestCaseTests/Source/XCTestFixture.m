//
//  XCTestFixture.m
//  XCParameterizedTestCase
//
//  Created by Michal Konturek on 07/12/2013.
//  Copyright (c) 2013 Michal Konturek. All rights reserved.
//

#import "XCTestFixture.h"

@implementation XCTestFixture

+ (instancetype)createWithInputValue:(id)input withExpectedValue:(id)excpected {
    return [[self alloc] initWithInputValue:input withExpectedValue:excpected];
}

- (instancetype)initWithInputValue:(id)input withExpectedValue:(id)expected {
    self = [super init];
    if (self) {
        _input = input;
        _expected = expected;
    }
    
    return self;
}

@end
