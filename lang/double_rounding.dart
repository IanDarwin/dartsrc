/// IEEE-754-style floating point cannot possibly represent all real numbers.
/// Here's a simple example showing where double arithmetic errs (slightly).
/// One solution is to use BigDecimal (pub.dev/packages/big_decimal),
/// ported over from Java where it's been used successfully by many
/// large financial institutions.
///
main() {
  double d = 0;
  for (int i = 1; i <= 10; i++) {
    d += 0.1;
  }
  print(d);    // prints 0.9999999999999999 not 1.0
}