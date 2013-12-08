# XCParameterizedTestCase

[![License MIT](https://go-shields.herokuapp.com/license-MIT-blue.png)](https://github.com/michalkonturek/XCParameterizedTestCase/blob/master/LICENSE)
[![Build Platform](https://cocoapod-badges.herokuapp.com/p/XCParameterizedTestCase/badge.png)](https://github.com/michalkonturek/XCParameterizedTestCase)
[![Build Version](https://cocoapod-badges.herokuapp.com/v/XCParameterizedTestCase/badge.png)](https://github.com/michalkonturek/XCParameterizedTestCase)

<!--
[![Build Status](https://travis-ci.org/michalkonturek/XCParameterizedTestCase?branch=master)](https://travis-ci.org/michalkonturek/XCParameterizedTestCase)
-->

Parameterized implementation of `XCTestCase`.

## Intro

The idea behind parameterized test case is to pass a collection of `<TestCaseData>` objects instead of defining multiple test methods, e.g.

instead of this:

```obj-c
- (void)test_outputForInteger_when_03_returns_fizz {
	NSInteger input = 3;
    assertThat([FizzBuzz outputForInteger:input], equalTo(@"Fizz"));
}
```

you do this:

`[XCTestCaseData createWithInputValue:@3 withExpectedValue:@"Fizz"]`


## Mechanics

`XCParameterizedTestCase` is a subclass of `XCTestCase`. 
It contains a single test method which is executed multiple times, depending on the number of test case data supplied. A test case data, represented by `<TestCaseData>` class, holds input value and expected value.

For each ``



## License

Source code of this project is available under the standard MIT license. Please see [the license file][LICENSE].

[PODS]:http://cocoapods.org/
[LICENSE]:https://github.com/michalkonturek/XCParameterizedTestCase/blob/master/LICENSE


## Installation


## Usage

**Step 1** - Make your test a subclass of XCParameterizedTestCase

```obj-c
@interface FizzBuzzTests : XCParameterizedTestCase
```

**Step 2** - Override `(NSArray *)testCaseData` method and define your test case data.

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
```

**Step 3** - Implement your test using `self.input` and `self.expected` properties.

```obj-c
- (void)test_fizbuzz {
    id result = [FizzBuzz outputForInteger:[self.input integerValue]];
    XCTAssertEqualObjects(self.expected, result, @"");
}
```

## Known Issues

* `xctool` - tests crash when using `xctool`
* Xcode Test Navigator - does not list injected test cases


- - - 

[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/michalkonturek/xcparameterizedtestcase/trend.png)](https://bitdeli.com/free "Bitdeli Badge")



