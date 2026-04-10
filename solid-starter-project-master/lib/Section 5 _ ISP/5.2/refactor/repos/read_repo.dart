import 'package:solid_examples/Section%205%20_%20ISP/5.2/refactor/types/read_only_config_source.dart';

class ReadRepo {
  ReadRepo(this.dataSource);
  final ReadOnlyConfigSource dataSource;

  Future<void> gitarticle() async {
    dataSource.fetchAll();
  }
}
