import 'package:dartz/dartz.dart';
import 'package:dictionary/data/model/meanings/meanings.dart';
import 'package:dictionary/data/model/no_meaning/no_meaning.dart';
import 'package:dictionary/domain/repository/repository.dart';

class GetMeaning {
  Repo repository;
  GetMeaning({required this.repository});
  Future<Either<NoMeaning, Meanings>> call(word) async {
    return await repository.getMeaning(word);
  }
}
