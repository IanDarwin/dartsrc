/// A simple data class with an id number and a name
class Bar {
  int id;
  String name;
  Bar(this.id, this.name);
  void drink() {
    print("Now I am less thirsty!");
  }
  /// We redefine == to compare only the names
  @override
  bool operator==(other) {
    if (other is! Bar) {
      return false;
    }
    return other.name == name;
  }

  // Should override hashCode when overriding ==
  @override
  int get hashCode => name.hashCode;
}
void main() {
  print("Operator Overloading Demo");
  Bar b1 = Bar(42, 'Ian');
  Bar b2 = Bar(35, 'Ian');
  Bar b3 = Bar(42, 'Katie');
  print("b1 == b2 is ${b1 == b2}");  // same name, so equal
  print("b1 == b3 is ${b1 == b3}");  // same id, diff names, not equal
  print("b1 == 42 is ${b1 == 42}");   // false, int 42 is not a Bar
}
