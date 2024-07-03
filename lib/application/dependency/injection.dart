import 'package:dictionary/data/repository/repo_impl.dart';
import 'package:dictionary/domain/Usecases/use_cases.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setUpLocator() {
  RepoImpl repository = RepoImpl();
  locator.registerSingleton<GetMeaning>(GetMeaning(repository: repository));
}
