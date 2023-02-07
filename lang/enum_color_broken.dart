enum Color {
  red, yellow, green;

  static Color colorFromString(String input) {
    Color.values.forEach((f) {
       // This part commented out as it will no longer compile on modern Dart
       // if (f.toString() == input) {
       //     return f;
       // }
    });
    throw 'Unknown Color in string ${input}';
  }
}

main() {
	print(Color.colorFromString('Red'));
}

