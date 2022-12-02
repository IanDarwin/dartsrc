import 'dart:async';

main() async {
	// Use of delay (2 seconds) is a stand-in
	// for something that might take a long time.
    var f = Future.delayed(
      const Duration(seconds: 2),
      () => 'Processed customer request',
    );
    var ret = await f;
    print(ret);

	// A more Dart-stylistic version:
	print(await Future.delayed(
      const Duration(seconds: 2),
      () => 'Processed customer request',
    ));
}
