import 'package:dictionary/data/model/meanings/meanings.dart';
import 'package:dictionary/domain/repository/repository.dart';

class GetMeaning {
  Repo repository;
  GetMeaning({required this.repository});
  Future<Meanings> call(word) {
    return repository.getMeaning(word);
  }
}
