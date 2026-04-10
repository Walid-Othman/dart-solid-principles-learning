import 'package:solid_examples/Section%205%20_%20ISP/5.2/refactor/classes/fetch_all.dart';
import 'package:solid_examples/Section%205%20_%20ISP/5.2/refactor/classes/fetch_by_id.dart';
import 'package:solid_examples/Section%205%20_%20ISP/5.2/refactor/model/artcle.dart';

class ReadOnlyConfigSource implements FetchAll, FetchById {
  final List<ArticleModel> _bundledData = [
    ArticleModel('1', 'Welcome', 'Welcome to the app'),
    ArticleModel('2', 'Tutorial', 'How to use this app'),
  ];

  @override
  Future<List<ArticleModel>> fetchAll() async {
    print('Reading bundled config...');
    return _bundledData;
  }

  @override
  Future<ArticleModel> fetchById(String id) async {
    return _bundledData.firstWhere((a) => a.id == id);
  }
}
