main() {
  var clos = (e) => 'Found $e';

  print(clos);
  print(clos('abc.123'));

  found("the way out");
  print(format('Shoes', 145.00));
}

void found(String s) => print("I found $s");

String format(item, price) => "Item $item costs $price";
