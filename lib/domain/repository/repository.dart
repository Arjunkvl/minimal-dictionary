import 'package:dictionary/data/model/meanings/meanings.dart';

abstract class Repo {
  Future<Meanings> getMeaning(word);
}
