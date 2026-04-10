import 'package:solid_examples/Section%205%20_%20ISP/5.2/refactor/model/artcle.dart';
import 'package:solid_examples/Section%205%20_%20ISP/5.2/refactor/types/remote_api_data_source.dart';

class RemoteRepo {
  RemoteRepo(this.dataSource);
  final RemoteApiDataSource dataSource;

  Future<void> saveData(ArticleModel article) async {
    await dataSource.save(article);
  }
}
