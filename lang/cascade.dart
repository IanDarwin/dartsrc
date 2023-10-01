/// The Cascade operator allows for more concise, readable code
class Person {
  String? name;
  int? age;
  welcome() {
    print("Welcome back, $name");
  }
  toString() => "Person($name, $age)";
}

main() {
Person person = Person();
person.name = 'Robin Hood';
person
  ..name = 'Robin Smith'
  ..age = 42
  ..welcome();
print(person);
}
