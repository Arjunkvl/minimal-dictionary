import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dictionary/data/model/meanings/meanings.dart';
import 'package:dictionary/data/model/no_meaning/no_meaning.dart';
import 'package:dictionary/domain/repository/repository.dart';
import 'package:http/http.dart' as http;

class RepoImpl implements Repo {
  @override
  Future<Either<NoMeaning, Meanings>> getMeaning(word) async {
    http.Response response;
    Meanings meaningResult;
    NoMeaning noMeaningResult;
    Uri url =
        Uri.parse("https://api.dictionaryapi.dev/api/v2/entries/en/$word");
    response = await http.get(url);
    var jsonResponse = jsonDecode(response.body);
    if (jsonResponse is Map<String, dynamic>) {
      noMeaningResult = NoMeaning.fromJson(jsonResponse);
      log('message');
      return Left(noMeaningResult);
    } else {
      meaningResult = Meanings.fromJson(jsonResponse[0]);
      return Right(meaningResult);
    }
  }
}
