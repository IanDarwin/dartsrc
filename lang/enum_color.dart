enum Color {
  red, yellow, green;

  static Color colorFromString(String input) {
  var found = null;
  Color.values.forEach((f) {
    if (f.toString() == "Color.${input.toLowerCase()}")
            found = f;
    });
    if (found!=null)
        return found;
    throw 'Unknown Color in string ${input}';
  }
}

main() {
	print(Color.colorFromString('Red'));
}
