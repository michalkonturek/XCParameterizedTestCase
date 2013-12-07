//
//  TestCaseData.h
//  XCParameterizedTestCase
//
//  Created by Michal Konturek on 07/12/2013.
//  Copyright (c) 2013 Michal Konturek. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TestCaseData <NSObject>
@required
- (id)input;
- (id)expected;
@end
