main() {
  String nullvar = null;
  try {
    nullvar.length;
  } catch (err) {
    print("Failure: $err");
  }
}
