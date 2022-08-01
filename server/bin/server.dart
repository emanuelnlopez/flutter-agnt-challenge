import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:stripedart/stripedart.dart';

// Configure routes.
final _router = Router()
  ..get('/', _rootHandler)
  ..get('/echo/<message>', _echoHandler)
  ..post('/create-setup-intent', _createSetupIntent)
  ..get('/create-setup-intent', _createSetupIntent);

final stripe = Stripe(
  'sk_test_51LPVAQAI5bDwbD3Uaq0YVEkaHy00UC1cSCnzCD85x0IunaXqQLyO9hmHujqEIqoOaQeXPs0MLtJlpLNmbKwhiQma00UTvqtZNq',
);

Response _rootHandler(Request req) {
  return Response.ok('Hello, World!\n');
}

Response _echoHandler(Request request) {
  final message = request.params['message'];
  return Response.ok('$message\n');
}

Response _createSetupIntent(Request request) {
  stripe.core.paymentIntents.create()
  return Response.ok(
    '{"clientSecret": "sec-${DateTime.now().millisecondsSinceEpoch}"}',
    headers: {'Content-Type': 'application/json'},
  );
}

void main(List<String> args) async {
  // Use any available host or container IP (usually `0.0.0.0`).
  final ip = InternetAddress.anyIPv4;

  // Configure a pipeline that logs requests.
  final handler = Pipeline().addMiddleware(logRequests()).addHandler(_router);

  // For running in containers, we respect the PORT environment variable.
  final port = int.parse(Platform.environment['PORT'] ?? '8080');
  final server = await serve(handler, ip, port);
  print('Server listening on port ${server.port}');
}
