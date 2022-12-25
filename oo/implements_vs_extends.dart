class One {
  String doSomething() { return "In One.doSomething()"; }
  String somethingElse() { return "In One.somethingElse()"; }
}
class Two implements One {
  // must provide own implementation 
  String doSomething() {
    return "In Two.doSomething()";
  }
  somethingElse() => "In Two.somethingElse()";
}
class Three extends One {
  // Can inherit method implementation
}
main() {
	print(One().doSomething());
	print(One().somethingElse());
	print(Two().doSomething());
	print(Two().somethingElse());
	print(Three().doSomething());
	print(Three().somethingElse());
}
