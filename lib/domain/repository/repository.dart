import 'package:dartz/dartz.dart';
import 'package:dictionary/data/model/meanings/meanings.dart';
import 'package:dictionary/data/model/no_meaning/no_meaning.dart';

abstract class Repo {
  Future<Option<Either<NoMeaning, Meanings>>> getMeaning(word);
}
