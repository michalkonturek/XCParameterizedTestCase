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

<!--```obj-c
```-->

<!--[TestCaseData(1,"1")]
[TestCaseData(3,"fizz")]
[TestCaseData(5,"buzz")]
- (void)test_fizzbuzz_withInput:(id)input andExpected:(id)expected {
}-->

## License

Source code of this project is available under the standard MIT license. Please see [the license file][LICENSE].

[PODS]:http://cocoapods.org/
[LICENSE]:https://github.com/michalkonturek/XCParameterizedTestCase/blob/master/LICENSE


## Usage

```obj-c
```


- - - 

[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/michalkonturek/xcparameterizedtestcase/trend.png)](https://bitdeli.com/free "Bitdeli Badge")



