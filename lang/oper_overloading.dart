/// A simple data class with an id number and a name
class Bar {
  int id;
  String barkeep;
  Bar(this.id, this.barkeep);
  void drink() {
    print("Hic!");
  }
  /// We define == to compare only the names
  @override
  bool operator==(other) {
    if (other is! Bar) {
      return false;
    }
    return other.barkeep == barkeep;
  }

  // Should override hashCode when overriding ==
  @override
  int get hashCode => barkeep.hashCode;
}
void main() {
  print("Operator Overloading Demo");
  Bar b1 = Bar(42, 'Ian');
  Bar b2 = Bar(35, 'Ian');
  Bar b3 = Bar(42, 'Katie');
  print(b1 == b2);  // same name, so equal
  print(b1 == b3);  // same id, diff names, not equal
}