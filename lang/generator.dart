/// An async* function generates a Stream of values
Stream<int> numbers(int start, int end) async* {
    for (int n = start; n <= end; n++) {
        yield n;
    }
}

main() async {
    print(numbers(1,15).take(10).forEach((i)  => print(i)));
}