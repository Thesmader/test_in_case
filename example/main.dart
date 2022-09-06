import 'package:test/test.dart';
import 'package:test_in_case/test_in_case.dart';

void main() {
  cases<int>(
    title: 'Even Numbers',
    cases: [2, 4, 6]
        .map(
          (number) => TestCase(
            name: '$number is even',
            testCase: number,
          ),
        )
        .toList(),
    tester: (testCase) => expect(testCase % 2, 0),
  );
}
