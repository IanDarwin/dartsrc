main() {
	var mylist = [];
	mylist.add(42);
	mylist.add(50);
	// mylist[2] - cannot add this way
	print(mylist);

	var selected = List.filled(25, false, growable: false);
	print(selected);

	var madeup = List<Customer>.generate(25, (i) => Customer(i, names[i]));
}

class Customer {
	int id;
	String name;
	Customer(this.id, this.name);
}
List<String> names = List.generate(25, (i) => "Customer $i");

