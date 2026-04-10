import 'package:solid_examples/Section%205%20_%20ISP/5.2/refactor/model/artcle.dart';
import 'package:solid_examples/Section%205%20_%20ISP/5.2/refactor/types/cache_data_Source.dart';

class CacheRepo {
  CacheRepo(this.dataSource);
  final CacheDataSource dataSource;

  Future<List<ArticleModel>> getArticles() async {
    return await dataSource.fetchAll();
  }

  Future<void> saveArticle(ArticleModel article) async {
    await dataSource.create(article);
  }

  Future<void> removeArticle(String id) async {
    await dataSource.delete(id);
  }

  Future<void> clearCache() async {
    await dataSource.clearAll();
  }
}
