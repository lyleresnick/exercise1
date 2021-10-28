import 'package:exercise1/repo/repo.dart';
import 'package:exercise1/repo/startup_entity.dart';

class UnimplementedRepo extends Repo {
  @override
  Future<List<StartupEntity>> getMoreSuggestions() async {
    // TODO: implement getMoreSuggestions
    throw UnimplementedError();
  }
}
