import 'dart:io';

import 'package:data/data.dart';
import 'package:http/http.dart' as http;

class NetworkClient {
  NetworkClient({
    required String apiKey,
  }) : _apiKey = apiKey;

  final String _apiKey;
  final NetworkLogger _logger = NetworkLogger();

  Future<http.Response> get(NetworkRequest request) async {
    final requestHeaders = _secure(
      headers: request.headers,
      apiKey: _apiKey,
    );

    _logger.logRequest(
      headers: requestHeaders,
      method: 'GET',
      uri: request.uri,
    );

    final response = await http.get(
      request.uri,
      headers: requestHeaders,
    );

    _logger.logResponse(
      body: response.body,
      headers: response.headers,
      statusCode: response.statusCode,
    );

    return response;
  }

  Future<http.Response> post(NetworkRequest request) async {
    final requestHeaders = _secure(
      headers: request.headers,
      apiKey: _apiKey,
    );

    _logger.logRequest(
      body: request.body,
      headers: requestHeaders,
      method: 'POST',
      uri: request.uri,
    );

    final response = await http.post(
      request.uri,
      body: request.body,
      headers: requestHeaders,
    );

    _logger.logResponse(
      body: response.body,
      headers: response.headers,
      statusCode: response.statusCode,
    );

    return response;
  }

  Map<String, String> _secure({
    required Map<String, String> headers,
    required String? apiKey,
  }) {
    if (apiKey?.isNotEmpty == true) {
      headers[HttpHeaders.authorizationHeader] = 'Bearer $apiKey';
    }
    return headers;
  }
}
