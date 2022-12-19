import 'dart:io';
import 'dart:math';

/// A trivial game to demonstrate the state pattern in Dart
/// "Guess a number from 1 to 10."
/// The state pattern ensures that all functions are considered in all states

_State curState = _StartState();
var _guess = Random().nextInt(10);

main() {
  curState.enterState();
  curState.play();
}

/// The State interface can have a mix of abstract methods,
/// default methods (like gotoState) here.
abstract class _State {
  enterState();
  play();
  gotoState(_State newState) {
    curState = newState;
    curState.enterState();
    curState.play();
  }
}

class _StartState extends _State {
  @override
  enterState() {
    print("To play this game, guess a number between 1 and 10");
  }
  play() {
    gotoState(_PlayState());
  }
}

class _PlayState extends _State {
  @override
  enterState() {
    // Nothing to do;
  }
  play() {
    int i = -1;
    while (i != _guess) {
      i = int.parse(stdin.readLineSync()!);
      if (i != _guess) {
        print("Please try again");
      }
    }
    gotoState(_WonState());
  }
}

class _WonState extends _State {
  enterState() {
    print("Correct answer - you win!");
    exit(0);
  }
  /// There may be methods that aren't needed in all states but would
  /// throw an exception if actually called (e.g., the play()
  /// method isn't used in the WonState here).
  @override
  play() {
    throw UnimplementedError();
  }
}