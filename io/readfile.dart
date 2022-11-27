import 'dart:io';
final String filename = "data/demo.txt";
main() {
var data = File(filename).readAsStringSync();
print("Read from file:");
print(data);
// Better way with Async:
Future<String> futString = File(filename).readAsString();
// then when you need the contents
print("Read from file:");
futString.then((s) => print(s));
}
