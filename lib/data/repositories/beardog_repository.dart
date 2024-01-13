import 'package:beardog_app/data/datasources/beardog_client.dart';
import 'package:beardog_app/domain/models/response.dart';

class BearDogRepository {
  final BearDogClient client;

  const BearDogRepository( this.client );

  Future<Respuesta> get( String term ) async {
    final result = await client.getData(term);
    return result;
  }
}