import 'package:http/http.dart' as http;

Future<http.Response> apiCall(word) async {
  Uri url = Uri.parse("https://api.dictionaryapi.dev/api/v2/entries/en/$word");
  return await http.get(url);
}
