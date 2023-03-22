/// "Export" some files into a Zip file

import 'dart:io';
import 'package:archive/archive.dart';

void main() {
  // Create the ZIP archive
  final archive = Archive();

  // Input can come from a file on disk
  archive.addFile(
    ArchiveFile('file1.txt', File('/tmp/name1.txt').lengthSync(), File('/tmp/name1.txt').readAsBytesSync()),
  );
  // Input can come from a String generated in the program
  var generatedString = "Hello World\nWelcome to Dart!\n";
  archive.addFile(
    ArchiveFile('file2.txt', generatedString.length, generatedString.codeUnits),
  );
  // Input can be binary file and can go into a virtual subdirectory in the archive
  var imageFileName = "/tmp/myface.png";
  archive.addFile(
    ArchiveFile('images/file3.png', File(imageFileName).lengthSync(), File(imageFileName).readAsBytesSync()),
  );

  // Save the ZIP archive to a file
  final zipFile = File('archive.zip');
  zipFile.writeAsBytesSync(ZipEncoder().encode(archive)!);
}

