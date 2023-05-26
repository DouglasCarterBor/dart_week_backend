import 'dart:async';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;

void main(List<String> arguments) async {
  final server = await io.serve(_handler,  '0.0.0.0', 4466);

  print('Online. http://${server.address.host}:${server.port}');
  print('Online. http://localhost:${server.port}');
}

FutureOr<Response> _handler(request){

  print(request);
  
  return Response(200, body:  'Hello, world!');
}