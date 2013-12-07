//
//  XCTestCaseData.h
//  XCParameterizedTestCase
//
//  Created by Michal Konturek on 07/12/2013.
//  Copyright (c) 2013 Michal Konturek. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "TestCaseData.h"

@interface XCTestCaseData : NSObject<TestCaseData>

+ (instancetype)createWithInputValue:(id)input withExpectedValue:(id)expected;

@property (nonatomic, strong) id input;
@property (nonatomic, strong) id expected;

- (instancetype)initWithInputValue:(id)input withExpectedValue:(id)expected;

@end
