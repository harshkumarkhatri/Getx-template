import 'package:dio/dio.dart';

class DashboardService {
  final dio = Dio(BaseOptions(baseUrl: 'https://alpha.prodoapi.com'));

  Future<Response?> getTree(String? userName) async {
    const token =
        'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJwYXJlbnQiOiJhZG1pbiIsInBhc3N3b3JkIjoiQ1FFaWxLQ0xTNlREcEZaUU16UVR4WGdYM2hDWjV0UURXbFovVTQ1dE4yNVBkOWhhUjNwTjQvbXJHWk1obVdxSiIsImFjY291bnRUeXBlIjoiTUFTVEVSIiwibW9iaWxlIjoiIiwibmFtZSI6IiIsImlkIjoiYzVmNzExNzctZTZlNS00OWRjLWJjYzUtYTcxMjkxMzE2ZjA4IiwiZXhwIjoxNzA3Mzg2MDY0LCJpYXQiOjE3MDQ3OTQwNjQsImVtYWlsIjoiIiwidXNlcm5hbWUiOiJtYXN0ZXIifQ.PhDi0F86xqwrxUuTz8Y3sDNLmrzdlaou0oSvdAuIyYU';
    return await dio.get(
      "/api/v1/user/get-tree?user=${userName ?? ""}",
      options: Options(
        headers: {"authorization": "Bearer $token"},
      ),
    );
  }
}
