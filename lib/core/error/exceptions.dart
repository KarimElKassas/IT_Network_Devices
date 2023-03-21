class ServerException implements Exception {
  final String errorMessage;

  ServerException(this.errorMessage);
}

class LocalException implements Exception{
  final String message;

  LocalException(this.message);
}