import 'dart:convert';
import 'dart:io';

/// Read from the standard input. No null check since it's for 
/// quick interactive use. Throws exception if no input, oh well.
/// See huge discussion of reading from keyboard, with lots of
/// interesting but often extraneous digressions, at
/// https://stackoverflow.com/questions/11122732/how-do-i-read-console-input-stdin-in-dart
void main() {
  // Using stdout.write instead of print to avoid newline (i.e., prompt)
  stdout.write("Enter your name: ");
  var name = stdin.readLineSync(encoding: utf8);
  print("We read your name as $name");
}
