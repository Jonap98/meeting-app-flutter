
import 'package:beardog_app/config/resources/api/api_provider.dart';

class ApiRepository {
  final _provider = ApiProvider();

  fetchData(String endpoint) {
    return _provider.fetchSala(endpoint);
  }
}

class NetworkError extends Error {}