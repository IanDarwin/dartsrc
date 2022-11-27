// Banal extension for Strings
// IRL (and if it were actually of general use)
// this would be stored in an external library for reuse
extension Wizzifying on String {
  String fancify() {
    return "** $this **";
  }
}

// Main program demonstrating the extension; my method
// acts like it was part of the String class all along!
main() {
  print("Hello world".fancify());
}