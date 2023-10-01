import 'dart:io';

/// A sever oversimplification of the SMTP protocol,
/// just to show roughly how it might be structured.

enum State {
	HELO,
	FROM,
	RCPT,
	DATA,
	DONE,
	INVALID,
}

main() {
	gotoState(State.HELO);
}

SmtpState? currentState = null;

void gotoState(State s) {
	switch(s) {
	case State.HELO: currentState = HeloState(); break;
	case State.FROM: currentState = FromState(); break;
	case State.RCPT: currentState = RcptState(); break;
	case State.DATA: currentState = DataState(); break;
	case State.DONE: currentState = DoneState(); break;
		default: currentState = InvalidState(); break;
	}
	currentState!.enterState();
}

State parseLine(String s) {
	String cmd = s.split(' ')[0].toUpperCase();
	for (int i = 0; i < State.values.length; i++) {
		if (cmd == State.values[i].name) {
			return State.values[i];
		}
	}
	throw InvalidState();
}

/// A simplification of STMP in that each state has only one valid output state
class SmtpState {
	State current;
	State next;
	SmtpState({required this.current, required this.next});

	enterState() {
		print("250 OK; Entering State $current");
		acceptCommand();
	}

	acceptCommand() {
		State cmd = parseLine(nextInput()!);
		print("In acceptCommand, cmd = $cmd, next = $next");
		if (cmd == current) {
			gotoState(next);
		} else {
			print("INVALID");
		}
	}
	processCommand() {
		// Nothing needed in most states
	}
}

class HeloState extends SmtpState {
	HeloState({super.current: State.HELO, super.next: State.FROM});
	@override
  enterState() {
    print("220 SimpleSimon SMTP faker");
		acceptCommand();
  }
}

class FromState extends SmtpState {
	FromState({super.current: State.FROM, super.next: State.RCPT});
}

class RcptState extends SmtpState {
	RcptState({super.current: State.RCPT, super.next: State.DATA});
}

class DataState extends SmtpState {
	DataState({super.current: State.DATA, super.next: State.DONE});

	@override
  enterState() {
    print('354 Enter mail, end with "." on a line by itself');
		acceptCommand();
  }

	@override
  acceptCommand() {
		String? s;
    do {
			s = nextInput();
		} while (s != ".");
  }
}

class DoneState extends SmtpState {
	DoneState({super.current: State.DONE, super.next: State.DONE});
	@override
  enterState() {
		print("Goodbye");

    exit(0);
  }
}

class InvalidState extends SmtpState {
  InvalidState({super.current: State.INVALID, super.next: State.INVALID});
}

String? nextInput() {
	return stdin.readLineSync();
}
