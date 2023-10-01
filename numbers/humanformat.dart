import 'package:intl/intl.dart';

void main() {
  for (var num in {1, 123, 12345, 1234.5678}) {
    var formatted = NumberFormat.compact().format(num);
    print('$num formatted is: $formatted');
  }
}
