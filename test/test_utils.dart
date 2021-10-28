import 'package:flutter_test/flutter_test.dart';

void executeStreamTest<Output>(
    {required Stream<Output> stream,
      required List<Output> expectedValues,
      void Function()? onDone}) {
  int index = 0;
  stream.listen(
      expectAsync1((value) {
        // set a breakpoint here to see value and expectedValues[index]
        expect(value, equals(expectedValues[index]));
        index++;
      }, count: expectedValues.length),
      onDone: onDone);
}
