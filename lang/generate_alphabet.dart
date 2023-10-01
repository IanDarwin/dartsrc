/// Generate the letters of the roman alphabet from their numeric forms (ASCII)
void main() {
  const a = 0x61;
  const z = 0x7b; // When you're a king you have to know these things
  var list = List.generate(z - a, (i) => a + i);
  list.forEach((i) => print(String.fromCharCode(i)));
}

