import 'package:solid_examples/Section%205%20_%20ISP/5.2/refactor/model/artcle.dart';
import 'package:solid_examples/Section%205%20_%20ISP/5.2/refactor/repos/cache_repo.dart';
import 'package:solid_examples/Section%205%20_%20ISP/5.2/refactor/repos/read_repo.dart';
import 'package:solid_examples/Section%205%20_%20ISP/5.2/refactor/repos/remote_repo.dart';
import 'package:solid_examples/Section%205%20_%20ISP/5.2/refactor/types/cache_data_Source.dart';
import 'package:solid_examples/Section%205%20_%20ISP/5.2/refactor/types/read_only_config_source.dart';
import 'package:solid_examples/Section%205%20_%20ISP/5.2/refactor/types/remote_api_data_source.dart';

void main() {
  ArticleModel articleModel = ArticleModel("1", "test", "hello from test");
  RemoteRepo remoteRepo = RemoteRepo(RemoteApiDataSource());
  CacheRepo cacheRepo = CacheRepo(CacheDataSource());
  ReadRepo readRepo = ReadRepo(ReadOnlyConfigSource());
  cacheRepo.getArticles();
  cacheRepo.clearCache();
  remoteRepo.saveData(articleModel);
  readRepo.gitarticle();
  cacheRepo.getArticles();
 
}
