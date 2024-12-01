/** A lax Stack implementation.
 */
class Stack<T> {
	
	static const DEFAULT_INITIAL = 50;
	final _stack = <T>[];
	
	bool empty() {
		return _stack.length == 0;
	}

	/** push - add an element onto the stack */
	void push(T obj) {
		_stack.add(obj);
	}

	/* pop - return and remove the top element */
	T pop() {
		return _stack.removeLast();
	}
	
	/** peek - return the top element but don't remove it */
	T peek() {
		return _stack.last;
	}
	
	bool hasNext() {
		return !empty();
	}
}

void main() {
	var st = Stack();
	print(st.empty());
	st.push("First");
	st.push("Second");
	st.push("Third");
	print(st.empty());
	while (st.hasNext()) {
		print(st.pop());
	}
	print(st.empty());
}
