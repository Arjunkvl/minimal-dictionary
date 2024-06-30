import 'dart:convert';

import 'package:dictionary/data/model/meanings/meanings.dart';
import 'package:dictionary/domain/repository/repository.dart';
import 'package:http/http.dart' as http;

class RepoImpl implements Repo {
  @override
  Future<Meanings> getMeaning(word) async {
    Meanings result;
    Uri url =
        Uri.parse("https://api.dictionaryapi.dev/api/v2/entries/en/$word");
    var response = await http.get(url);
    var jsonResponse = jsonDecode(response.body);
    result = Meanings.fromJson(jsonResponse[0]);
    return result;
  }
}
