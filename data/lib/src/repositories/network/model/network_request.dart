import 'dart:io';

abstract class NetworkRequest {
  NetworkRequest({required this.url});

  final String url;

  String? get body;

  Map<String, String> get headers => {
        HttpHeaders.contentTypeHeader: 'application/x-www-form-urlencoded',
        HttpHeaders.acceptHeader: ContentType.json.toString(),
      };

  Uri get uri => Uri.parse(url);
}
