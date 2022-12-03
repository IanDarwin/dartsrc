main() async {
	// Define two async function; 2nd uses first.
	Future<String> process(s) async => Future.value("I processed $s");
	Function f1 = (s) async => await process(s);

	var list = [ 'Tom', 'Nikki', 'Harriet' ];
	Future fut =
	  Stream.fromIterable(list)
		.map((s) => "Name: $s")
		.forEach((s) async => await process(s));
	fut.then( (s) => print(s.join('--')) );
}
