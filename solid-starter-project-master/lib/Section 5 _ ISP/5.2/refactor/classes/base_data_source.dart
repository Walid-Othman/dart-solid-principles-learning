
import 'package:solid_examples/Section%205%20_%20ISP/5.2/refactor/types/cache_data_Source.dart';
import 'package:solid_examples/Section%205%20_%20ISP/5.2/refactor/types/read_only_config_source.dart';
import 'package:solid_examples/Section%205%20_%20ISP/5.2/refactor/types/remote_api_data_source.dart';

abstract class BaseDataSource
    implements CacheDataSource ,RemoteApiDataSource,ReadOnlyConfigSource {}
