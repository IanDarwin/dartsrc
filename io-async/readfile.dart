import 'dart:io';
final String filename = "data/demo.txt";
main() async {
  var data = File(filename).readAsStringSync();
  print("Read from file sync:");
  print(data);

  // Better way with Async:
  Future<String> futString = File(filename).readAsString();
  // Do other work, then when you need the contents:
  print("Read from file async:");
  futString.then((s) => print(s));

  // Another way:
  data = await File(filename).readAsString();
  print("Read from file async using await:");
  print(data);
}
