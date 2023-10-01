// Async ordering and delays.

Future<String> fetchData() async {
  // Imagine this function is fetching data from a server
  await Future.delayed(Duration(seconds: 1));
  print('Data fetched!');
  return "Here is your data";
}

void main() {
  var fut = fetchData();
  print('Doing other things...');
  fut.then( (s) => print(s) );
}
