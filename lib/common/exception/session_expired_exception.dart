class SessionExpiredException implements Exception {
  final String message;
  final dynamic statusCode;

  SessionExpiredException({this.message = '', this.statusCode});

  @override
  String toString() => "message :$message statusCode : $statusCode";
}
