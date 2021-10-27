import 'package:exercise1/repo/startup_entity.dart';

abstract class Repo {
  Future<List<StartupEntity>> getMoreSuggestions();
}
