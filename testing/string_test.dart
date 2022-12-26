import 'package:test/test.dart';

void main() {
  // Individual test
  test('String == operator', () {
      expect("abc" == "abc", true);
  });
  // Group of tests
  group('String indexing', () {
    test('Index should start at 0', () {
      expect("abc".indexOf('a'), 0);
    });
    test('Ending index should == length-1', () {
      var s = 'abcc';
      expect(s.lastIndexOf('c'), s.length - 1);
    });
  });
}
