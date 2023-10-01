import 'dart:io';
import 'dart:typed_data';

main() async {

  // Connect the socket (IRL should be SecureSocket and 443!)
  var socket = await Socket.connect("darwinsys.com", 80);

  // 'listen' takes a required positional to read,
  // and two keyword args for onDone and onError
  socket.listen(

    // receive data from the server, convert to String
    (Uint8List data) {
      final serverResponse = String.fromCharCodes(data);
      print('Server response:\n$serverResponse');
    },

    // called on network error
    onError: (error) {
      print("Not good! $error");
      socket.destroy();
    },

    // called on server disconnection
    onDone: () {
      print('Server disconnected.');
      socket.destroy();
    },
  );

  // Now we can write, and that will trigger a response
  String httpRequest = "GET / HTTP/1.0";
  print("Sending request $httpRequest");
  socket.write("$httpRequest\n\n");
  print("All done!");
}
