main() {
  var names = [ "Ian D", 'Robin S', "Jo J"];
  print(names);
  print(names.length); // prints "3"
  print(names[0].length); // prints "5"
  print(names.runtimeType); // prints "List<String>"
  print(names[0].runtimeType);
  print(names);
  var ian = names[0];
  print(ian.toLowerCase());
  print(ian.split(''));
  print(ian.codeUnits);
  print(ian.runes);
  print(ian.indexOf(" "));
}
