class MyMixin {
  String getLastUpdate() {
    return DateTime.now().toString();
  }
}

class A with MyMixin {
  double getCustomerBalance() => 42.95;
}

main() {
  var mixed = A();
  // Notice both calls on object of type 'A'
  print(mixed.getCustomerBalance());
  print(mixed.getLastUpdate());
}