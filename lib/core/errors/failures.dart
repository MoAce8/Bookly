import 'package:dio/dio.dart';

abstract class Failures {
  final String errMessage;

  Failures(this.errMessage);
}

class ServerFailure extends Failures {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection time out');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send time out');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive time out');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate');
      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('Check your internet connection');
      case DioExceptionType.unknown:
        return ServerFailure('Something went wrong, try again later');
      default:
        return ServerFailure('Something went wrong, try again later');
    }
  }

  factory ServerFailure.fromBadResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 402 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Error 404 not found, try again later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server Error, try again later');
    } else {
      return ServerFailure('Something went wrong, try again later');
    }
  }
}
