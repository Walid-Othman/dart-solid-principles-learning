import 'package:solid_examples/Section%205%20_%20ISP/5.2/refactor/classes/clear_all.dart';
import 'package:solid_examples/Section%205%20_%20ISP/5.2/refactor/classes/create.dart';
import 'package:solid_examples/Section%205%20_%20ISP/5.2/refactor/classes/delete.dart';
import 'package:solid_examples/Section%205%20_%20ISP/5.2/refactor/classes/fetch_all.dart';
import 'package:solid_examples/Section%205%20_%20ISP/5.2/refactor/classes/fetch_by_id.dart';
import 'package:solid_examples/Section%205%20_%20ISP/5.2/refactor/classes/update.dart';
import 'package:solid_examples/Section%205%20_%20ISP/5.2/refactor/model/artcle.dart';

class CacheDataSource
    implements FetchAll, FetchById, Create, Update, Delete, ClearAll {
  final Map<String, ArticleModel> _cache = {};

  @override
  Future<List<ArticleModel>> fetchAll() async {
    print('Fetching from cache...');
    return _cache.values.toList();
  }

  @override
  Future<ArticleModel> fetchById(String id) async {
    return _cache[id]!;
  }

  @override
  Future<void> create(ArticleModel article) async {
    _cache[article.id] = article;
    print('Article cached');
  }

  @override
  Future<void> update(ArticleModel article) async {
    _cache[article.id] = article;
  }

  @override
  Future<void> delete(String id) async {
    _cache.remove(id);
  }

  @override
  Future<void> clearAll() async {
    _cache.clear();
    print('Cache cleared');
  }
}
