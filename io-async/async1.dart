Future<String> process(String s) async { return s + "."; }
// Can invoke using await:
main() {
	Function f = (s) async => await process(s);
	print("done 1, f is $f, invoking f('hello') yields ${f('hello')}.");
	// Can also provide a 'then' callback to run when the Future completes
	process("Hello").then((s) => print('done 2, s is $s'));
}
