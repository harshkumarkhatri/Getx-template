import 'package:getx_initial_setup/core/values/strings.dart';

abstract class ProdoException implements Exception {
  final String message;
  ProdoException(this.message);

  @override
  String toString() => message;
}

class InternalErrorException extends ProdoException {
  InternalErrorException([String? message])
      : super(message ?? internalErrorExceptionMessage);
}

class NoVehicleDataException extends ProdoException {
  NoVehicleDataException([String? message])
      : super(message ?? internalErrorExceptionMessage);
}

class NetworkException extends ProdoException {
  NetworkException([String? message])
      : super(message ?? networkExceptionMessage);
}

class BadRequestException extends ProdoException {
  BadRequestException([String? message])
      : super(message ?? badRequestExceptionMessage);
}

class UnauthorisedException extends ProdoException {
  UnauthorisedException([String? message])
      : super(message ?? unauthorisedExceptionMessage);
}

class NotFoundException extends ProdoException {
  NotFoundException([String? message])
      : super(message ?? notFoundExceptionMessage);
}

class NullDataException extends ProdoException {
  NullDataException([String? message])
      : super(message ?? notFoundExceptionMessage);
}

class UploadDocsException extends ProdoException {
  UploadDocsException([String? message])
      : super(message ?? notFoundExceptionMessage);
}

class FutureDateException extends ProdoException {
  FutureDateException([String? message])
      : super(message ?? futureDateException);
}

class AppUpdateException extends ProdoException {
  AppUpdateException({String? message}) : super(message ?? appUpdateException);
}

class SwitchFormatException extends ProdoException {
  SwitchFormatException([String? message]) : super(message ?? formatException);
}
