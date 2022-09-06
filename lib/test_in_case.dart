import 'dart:developer';

import 'package:test/test.dart';
import 'package:meta/meta.dart';

/// Utility class to hold test data. [T] is the type for the test case.
class TestCase<T> {
  /// Constructor for [TestCase].
  /// Takes two named arguments:
  /// - [name]: The name for the test case.
  /// - [testCase]: The test case of type [T].
  TestCase({
    required this.name,
    required this.testCase,
  });
  final String name;
  final T testCase;
}

/// Creates a group of tests with [title] as the description.
/// Takes a list of [TestCase]s as argument for [cases].
/// [tester] is the callback that will be called for each [TestCase].
@isTestGroup
void cases<T>({
  required String title,
  required List<TestCase<T>> cases,
  required Function(T) tester,
}) {
  log(title);
  for (final testCase in cases) {
    test(testCase.name, () {
      tester(testCase.testCase);
    });
  }
}
