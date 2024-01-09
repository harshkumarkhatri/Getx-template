import 'package:getx_initial_setup/core/values/strings.dart';

abstract class CustomException implements Exception {
  final String message;
  CustomException(this.message);

  @override
  String toString() => message;
}

class InternalErrorException extends CustomException {
  InternalErrorException([String? message])
      : super(message ?? internalErrorExceptionMessage);
}

class NoVehicleDataException extends CustomException {
  NoVehicleDataException([String? message])
      : super(message ?? internalErrorExceptionMessage);
}

class NetworkException extends CustomException {
  NetworkException([String? message])
      : super(message ?? networkExceptionMessage);
}

class BadRequestException extends CustomException {
  BadRequestException([String? message])
      : super(message ?? badRequestExceptionMessage);
}

class UnauthorisedException extends CustomException {
  UnauthorisedException([String? message])
      : super(message ?? unauthorisedExceptionMessage);
}

class NotFoundException extends CustomException {
  NotFoundException([String? message])
      : super(message ?? notFoundExceptionMessage);
}

class NullDataException extends CustomException {
  NullDataException([String? message])
      : super(message ?? notFoundExceptionMessage);
}

class UploadDocsException extends CustomException {
  UploadDocsException([String? message])
      : super(message ?? notFoundExceptionMessage);
}

class FutureDateException extends CustomException {
  FutureDateException([String? message])
      : super(message ?? futureDateException);
}

class AppUpdateException extends CustomException {
  AppUpdateException({String? message}) : super(message ?? appUpdateException);
}

class SwitchFormatException extends CustomException {
  SwitchFormatException([String? message]) : super(message ?? formatException);
}
