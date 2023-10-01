import 'package:http/http.dart' as http;

void main() async {

  var url = Uri.parse('http://127.0.0.1:8080/index.html');
  var request = http.Request('GET', url);
  var response = await request.send();
  print('Response status: ${response.statusCode}');
  if (response.statusCode != 200) {
    return;
  }
  String body = await response.stream.bytesToString();
  print("First 100 bytes of response are:\n${body.substring(0, 100)}");
}
