import 'dart:async';

main() async {
    // delay 2 seconds stands in for something that might take a long time.
    var f = Future.delayed(
      const Duration(seconds: 2),
      () => 'Processed customer request',
    );
    var ret = await f;
    print(ret);

    // Identical code written in a more Dart-stylistic version:
    print(await Future.delayed(
      const Duration(seconds: 2),
      () => 'Processed customer request',
    ));
}
