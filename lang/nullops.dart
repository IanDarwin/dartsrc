main() {
Item? item = Item();
String? detail;

if (item != null) {
  detail = item.getProductDetail();
}
detail = item.getProductDetail(); // short for above

detail = item.getProductDetail() ?? "(No details)";

detail ??= "(No details)"; // Assign iff detail is null

print(detail);
}

class Item {
  String? getProductDetail() => "Acme Widget Anvil";
}

