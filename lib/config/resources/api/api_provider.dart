import 'package:beardog_app/domain/models/sala_model.dart';
import 'package:dio/dio.dart';

class ApiProvider {
  final Dio _dio = Dio();
  final String _urlBase = '127.0.0.1:8000/api/';

  // Future<Sala>? fetchSala() async {
  Future<dynamic> fetchSala( String url ) async {
    try {
      Response resp = await _dio.get('$_urlBase/$url');
      return Sala.fromJson(resp.data);
    } catch( e ) {
      print(e);
    }
    // catch (error, stacktrace) {
    //   print("Exception occured: $error stackTrace: $stacktrace");
    //   return CovidModel.withError("Data not found / Connection issue");
    // }


    get(String url) {
        
    }
  }
}