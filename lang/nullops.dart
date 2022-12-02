main() {
Item? item = Item("Acme Widgets Anvil");
String? detail;

if (item != null) {
  detail = item.getProductDetail();
}
detail = item?.getProductDetail(); // short for above
print(detail);
detail = item.getProductDetail() ?? "(No details)";
detail ??= "(Still no details)"; // Assign iff detail is null
print(detail);
print(item.length());
print(detail!.length);
}

class Item {
  Item(this._detail);
  final _detail;
  String? getProductDetail() => _detail;
  int length() => _detail.length;
}

