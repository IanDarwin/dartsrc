main() {
  var converted = int.parse('32768') * 2;
  assert(converted is int);
  print(converted); // should be 65536

  converted = int.parse("0xffff") + 1;
  print(converted); // should be 65536
}

