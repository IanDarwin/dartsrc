import 'dart:convert';
import 'dart:io';

void main() {
  print("Enter your name: ");
  var name = stdin.readLineSync(encoding: utf8);
  print("We read your name as $name");
}
