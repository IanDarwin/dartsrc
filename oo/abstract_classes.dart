abstract class Top {
  String getSport();
}

abstract class Middle extends Top {

}

class Bottom extends Middle {
  @override
  getSport() {
    return "Football";
  }
}

main() {
  Top x = Bottom();
  print(x.getSport());
}