import 'dart:convert';

import 'package:beardog_app/domain/models/response.dart';
import 'package:beardog_app/domain/models/response_error_model.dart';
// import 'package:dio/dio.dart';

import 'package:http/http.dart' as http;

class BearDogClient {
  final String urlBase;
  // final Dio dio;
  final http.Client httpClient;

  BearDogClient({
    http.Client? httpClient,
    this.urlBase = 'http://127.0.0.1:8000',
  }): httpClient = httpClient ?? http.Client();

  Future<Respuesta> getData( String term ) async {
    final response = await httpClient.get(Uri.parse('$urlBase$term'));

    final results = jsonDecode( response.body ) as Map<String, dynamic>;

    if( response.statusCode == 200 ) {
      return Respuesta.fromJson( results );
    } else {
      throw ResponseError.fromJson( results );
    }
  }
}