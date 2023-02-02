enum Color {
  red(1), yellow(2), green(3);

  final intVal;

  const Color(this.intVal);

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
	print(Color.colorFromString('red'));
	print(Color.colorFromString('azure'));
}
