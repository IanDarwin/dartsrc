enum Color { red, yellow, green; }

main() {
  Color trafficLightColor = Color.green;
  switch(trafficLightColor) {
    case Color.red:
      print("STOP!!");
      break; // breaks required
    case Color.yellow:
      print("Be careful!");
      break;
    case Color.green:
      print("Full steam ahead!");
      break;
  }
}
