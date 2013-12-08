# XCParameterizedTestCase

[![License MIT](https://go-shields.herokuapp.com/license-MIT-blue.png)](https://github.com/michalkonturek/XCParameterizedTestCase/blob/master/LICENSE)
[![Build Platform](https://cocoapod-badges.herokuapp.com/p/XCParameterizedTestCase/badge.png)](https://github.com/michalkonturek/XCParameterizedTestCase)
[![Build Version](https://cocoapod-badges.herokuapp.com/v/XCParameterizedTestCase/badge.png)](https://github.com/michalkonturek/XCParameterizedTestCase)

<!--
[![Build Status](https://travis-ci.org/michalkonturek/XCParameterizedTestCase?branch=master)](https://travis-ci.org/michalkonturek/XCParameterizedTestCase)
-->

Parameterized implementation of `XCTestCase`.

## Intro

`XCParameterizedTestCase` is a subclass of `XCTestCase`. 
It contains a single test method which is executed multiple times, depending on the count of test case data supplied. A test case data, represented by `TestCaseData` class, holds input value and expected value.

The idea is to pass a collection of `TestCaseData` objects instead of defining multiple test methods.

With XCParameterized test case you do this:

```obj-c
+ (NSArray *)testCaseData {
    return @[
             [XCTestCaseData createWithInputValue:@1 withExpectedValue:@"1"],
             [XCTestCaseData createWithInputValue:@3 withExpectedValue:@"Fizz"],
             [XCTestCaseData createWithInputValue:@5 withExpectedValue:@"Buzz"],
             [XCTestCaseData createWithInputValue:@6 withExpectedValue:@"Fizz"],
             [XCTestCaseData createWithInputValue:@15 withExpectedValue:@"FizzBuzz"]
             ];
}

- (void)test_fizbuzz {
    id result = [FizzBuzz outputForInteger:[self.input integerValue]];
    XCTAssertEqualObjects(self.expected, result, @"");
}
```


```obj-c
- (void)test_01_returns_01 {
    NSInteger input = 1;
    assertThat([FizzBuzz outputForInteger:input], equalTo(@"1"));
}

- (void)test_03_returns_fizz {
    NSInteger input = 3;
    assertThat([FizzBuzz outputForInteger:input], equalTo(@"Fizz"));
}

- (void)test_05_returns_buzz {
    NSInteger input = 5;
    assertThat([FizzBuzz outputForInteger:input], equalTo(@"Buzz"));
}

- (void)test_06_returns_fizz {
    NSInteger input = 6;
    assertThat([FizzBuzz outputForInteger:input], equalTo(@"Fizz"));
}

- (void)test_15_returns_fizzbuzz {
    NSInteger input = 15;
    assertThat([FizzBuzz outputForInteger:input], equalTo(@"FizzBuzz"));
}
```


## License

Source code of this project is available under the standard MIT license. Please see [the license file][LICENSE].

[PODS]:http://cocoapods.org/
[LICENSE]:https://github.com/michalkonturek/XCParameterizedTestCase/blob/master/LICENSE


## Usage

```obj-c
```


- - - 

[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/michalkonturek/xcparameterizedtestcase/trend.png)](https://bitdeli.com/free "Bitdeli Badge")



