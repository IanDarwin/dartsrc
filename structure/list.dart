main() {
	var mylist = [];
	mylist.add(42);
	mylist.add(50);
	// mylist[2] = 60; // cannot extend list this way
	print(mylist);

	var selected = List.filled(25, false, growable: false);
	print(selected);

	var madeup = List<Customer>.generate(25, (i) => Customer(i, names[i]));
	for (int i in [0, 1,2,3,4,5]) {
		print(madeup[i]);
	}
}

class Customer {
	int id;
	String name;
	Customer(this.id, this.name);
	String toString() => "Customer id $id name $name";
}
List<String> names = List.generate(25, (i) => "Customer $i");

