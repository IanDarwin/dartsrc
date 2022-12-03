enum Color { RED, YELLOW, GREEN; }

main() {
  Color trafficLightColor = Color.GREEN;
  switch(trafficLightColor) {
    case Color.RED:
      print("STOP!!");
      break; // breaks required
    case Color.YELLOW:
      print("Be careful!");
      break;
    case Color.GREEN:
      print("Full steam ahead!");
      break;
  }
}