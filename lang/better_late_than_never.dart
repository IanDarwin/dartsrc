class Better {
  var earlyString = "Welcome back, Customer";
  late String lateString = findTicket();
  late String evenLaterString;

  findTicket() {
    print("In findTicket");
    return "Ticket #28911 Row 5 Seat 14 7:30 Show";
  }
}

main() {
  var b = Better();
  print(b.earlyString);
  print(b.lateString);
  b.evenLaterString = "Good evening!";
  print(b.evenLaterString);
}