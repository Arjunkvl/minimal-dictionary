import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dictionary/data/model/meanings/meanings.dart';
import 'package:dictionary/data/model/no_meaning/no_meaning.dart';
import 'package:dictionary/domain/repository/repository.dart';
import 'package:dictionary/infrastructure/api/api_call.dart';
import 'package:http/http.dart' as http;

class RepoImpl implements Repo {
  @override
  Future<Option<Either<NoMeaning, Meanings>>> getMeaning(word) async {
    http.Response response;
    Meanings meaningResult;
    NoMeaning noMeaningResult;
    try {
      response = await apiCall(word);
      var jsonResponse = jsonDecode(response.body);
      if (jsonResponse is Map<String, dynamic>) {
        noMeaningResult = NoMeaning.fromJson(jsonResponse);
        return Some(Left(noMeaningResult));
      } else {
        meaningResult = Meanings.fromJson(jsonResponse[0]);
        return Some(Right(meaningResult));
      }
    } catch (e) {
      return none();
    }
  }
}
