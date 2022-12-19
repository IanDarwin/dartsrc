/// Demo of async function and await.

// Conventional version
double computeSync() {
  // something that will take a long time.
  return 42;
}

Future<double> computeAsync() async{
  // something else that will take a long time.
  return 43;
}

void main() async {
  print("Sync method: ${computeSync()}");
  print("Async method:");
  double d = await computeAsync();
  print(d);
}