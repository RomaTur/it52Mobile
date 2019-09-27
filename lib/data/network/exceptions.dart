import 'dart:developer' as developer;

class NetworkException implements Exception {
  String message;
  int statusCode;

  NetworkException({this.message, this.statusCode}) {
    print(this.message);
    print(this.statusCode);
    developer.log(this.message,
        name: "Network exception: " + this.statusCode.toString());
  }
}

class DecodeException extends NetworkException {
  String message;
  int statusCode;

  DecodeException({this.message, this.statusCode})
      : super(message: message, statusCode: statusCode) {
    print(this.message);
    print(this.statusCode);

    developer.log(message,
        name: "Decode exception: " + this.statusCode.toString());
  }
}
