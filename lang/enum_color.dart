enum Color {
  RED, YELLOW, GREEN;

  static Color colorFromString(String input) {
  var found = null;
  Color.values.forEach((f) {
    if (f.toString() == "Color.${input.toUpperCase()}")
            found = f;
    });
    if (found!=null)
        return found;
    throw 'Unknown Color in string ${input}';
  }
}

main() {
	print(Color.colorFromString('red'));
}
