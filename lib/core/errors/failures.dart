import 'package:dio/dio.dart';

abstract class Failure{
  final String errMessage;
  const Failure(this.errMessage);
}
class ServerFailure extends Failure{
  ServerFailure(super.errMessage);
  factory ServerFailure.fromDioError(DioException dioError){
    switch(dioError.type){
      case DioExceptionType.connectionTimeout:
        return ServerFailure('connection timeout with api server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('send timeout with api server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('receive timeout with api server');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(dioError.response!.statusCode!,dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('request to api server was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('no internet connection');
      case DioExceptionType.unknown:
        if(dioError.message!.contains('SocketException')){
          return ServerFailure('no internet connection');
        }
        return ServerFailure('unexpected error,please try again');
        default:
        return ServerFailure('opps there was an error,please try again');

    }
  }
  factory ServerFailure.fromResponse(int statusCode,dynamic response){
    if(statusCode==400||statusCode==401||statusCode==403){
      return ServerFailure(response['error']['message']);
    }else if(statusCode==404){
      return ServerFailure('your request not found,please try later');

    }else if(statusCode==500){
      return ServerFailure('internal server error,please try later');
    }else{
      return ServerFailure('opps there was an error,please try again');


    }
  }

}