class NetworkException implements Exception {
  dynamic httpStatus;
  dynamic responseCode;
  dynamic responseMessage;

  NetworkException({
    this.httpStatus = 401,
    this.responseCode = "",
    this.responseMessage = "",
  });

  @override
  String toString() {
    return '{ httpStatus : $httpStatus, responseCode : $responseCode, responseMessage $responseMessage } ';
  }
}
