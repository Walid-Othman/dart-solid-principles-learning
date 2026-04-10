import 'package:solid_examples/Section%205%20_%20ISP/5.2/refactor/classes/create.dart';
import 'package:solid_examples/Section%205%20_%20ISP/5.2/refactor/classes/delete.dart';
import 'package:solid_examples/Section%205%20_%20ISP/5.2/refactor/classes/fetch_all.dart';
import 'package:solid_examples/Section%205%20_%20ISP/5.2/refactor/classes/fetch_by_id.dart';
import 'package:solid_examples/Section%205%20_%20ISP/5.2/refactor/classes/save.dart';
import 'package:solid_examples/Section%205%20_%20ISP/5.2/refactor/classes/update.dart';
import 'package:solid_examples/Section%205%20_%20ISP/5.2/refactor/model/artcle.dart';

class RemoteApiDataSource
    implements FetchAll, Create, FetchById, Update, Delete, Save {
  @override
  Future<List<ArticleModel>> fetchAll() async {
    print('Fetching articles from API...');
    return [];
  }

  @override
  Future<ArticleModel> fetchById(String id) async {
    print('Fetching article $id from API...');
    return ArticleModel(id, 'Title', 'Content');
  }

  @override
  Future<void> create(ArticleModel article) async {
    print('Creating article on server...');
  }

  @override
  Future<void> update(ArticleModel article) async {
    print('Updating article on server...');
  }

  @override
  Future<void> delete(String id) async {
    print('Deleting article from server...');
  }

  @override
  save(ArticleModel artcle) {
    print("data saved successfully");
  }
}
