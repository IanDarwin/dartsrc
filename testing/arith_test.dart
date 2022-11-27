import "package:test/test.dart";

main() {
String i = "forty-two";
test('Dart arithmetic works', () {
  expect(2 + 2, 4);
  });
test('Exceptions thrown', () {
  expect(() => int.parse(i), throwsFormatException);
  });
}
