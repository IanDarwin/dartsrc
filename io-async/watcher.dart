import "dart:io";

main() {
  File("/tmp").watch().forEach( (e) => print(e) );
}
