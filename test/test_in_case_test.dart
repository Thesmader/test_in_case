import 'package:test/test.dart';
import 'package:test_in_case/test_in_case.dart';

const evenNumbers = [2, 4, 6, 8, 10];

bool isEven(int number) => number % 2 == 0;

void main() {
  cases<int>(
    title: 'Even Numbers',
    cases: evenNumbers
        .map(
          (number) => TestCase(
            name: '$number is even',
            testCase: number,
          ),
        )
        .toList(),
    tester: (testCase) => expect(
      isEven(testCase),
      true,
    ),
  );
}
