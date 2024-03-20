import 'package:dio/dio.dart';

abstract class Failures {}

class ServerFailure extends Failures {
  final String errorMassage;

  ServerFailure(this.errorMassage);
  factory ServerFailure.fromDioException(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timeout');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Timeout');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate');
      case DioExceptionType.badResponse:
        return ServerFailure.fromReponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request Cancelled');

      case DioExceptionType.connectionError:
        return ServerFailure('connection Error');
      case DioExceptionType.unknown:
        return ServerFailure('Oops! Something went wrong!');
    }
  }
  factory ServerFailure.fromReponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404)
      return ServerFailure('Not Found');
    else if (statusCode == 500) return ServerFailure('Internal Server Error');
    return ServerFailure('Oops! Something went wrong!');
  }
}
