void main() {
  var x = X();
  print(x.intValue);// Note no ()
  x.intValue = 42;	// Use this...
  print(x);
  x.setValue(42);	// or this.
  print(x);
}
class X {
  int? _someInt;
  int get intValue => _someInt!;
  set intValue(int newInt) => _someInt = newInt;
  void setValue(int newInt) => _someInt = newInt;
  toString() => "X($_someInt)";
}
