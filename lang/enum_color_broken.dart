enum Color {
  red, yellow, green;

  static Color colorFromString(String input) {
    Color.values.forEach((f) {
       if (f.toString() == input) {
           return f;
       }
    });
    throw 'Unknown Color in string ${input}';
  }
}

main() {
	print(Color.colorFromString('Red'));
}

