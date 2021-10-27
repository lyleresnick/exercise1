import 'package:english_words/english_words.dart';
import 'package:exercise1/repo/startup_entity.dart';
import 'package:uuid/uuid.dart';

import 'repo.dart';

class TestRepo implements Repo {
  final int pageSize = 20;
  static final repo = TestRepo._();

  TestRepo._() {
    getMoreSuggestions();
  }

  Future<List<StartupEntity>> getMoreSuggestions() {
    final uuid = Uuid();
    return Future.delayed(Duration(seconds: 2), () {
      return generateWordPairs()
          .take(20)
          .map((pair) =>
          StartupEntity(id: uuid.v4(), startupName: pair.asPascalCase))
          .toList();
    });
  }
}
