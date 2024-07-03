import 'package:dartz/dartz.dart';
import 'package:dictionary/data/model/meanings/meanings.dart';
import 'package:dictionary/data/model/no_meaning/no_meaning.dart';
import 'package:dictionary/data/repository/repo_impl.dart';

class GetMeaning {
  RepoImpl repository;
  GetMeaning({required this.repository});
  Future<Option<Either<NoMeaning, Meanings>>> call(word) async {
    return await repository.getMeaning(word);
  }
}
