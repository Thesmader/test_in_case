# test_in_case

> A dart [test](https://pub.dev/packages/test) utility for creating variations
> of the same test using multiple cases. Write the testing logic once and
> provide a list of cases to test.
> Inspired by [jest-in-case](https://github.com/atlassian/jest-in-case).

### Installation
```
  dart pub add test_in_case --dev
  
  OR
  
  flutter pub add test_in_case --dev
```

### Usage

Import the test_in_case package. Use the cases function to define the tests.
It takes in three parameters:
- title: The title of the group of tests.
- cases: A list of `TestCase` objects.
- tester: Pass a the testing logic as a callback which will be called for each
  test case. The test case object is passed to the callback as an argument.

Call the cases function with a type parameter(`cases<T>`), which will be used
as the type of the test case in the `TestCase` object.


``` dart
  import 'package:test_in_case/test_in_case.dart';
  
  cases<int>(
    title: 'Even Numbers'
    cases: [1, 2, 3]
        .map(
          (number) => TestCase(
            name: '$number is even',
            testCase: number,
          ),
        )
        .toList(),
    tester: (testCase) => expect(testCase % 2 ==0, true);
  );
```
