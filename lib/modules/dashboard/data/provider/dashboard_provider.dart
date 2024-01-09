import 'package:dio/dio.dart';
import 'package:getx_initial_setup/modules/dashboard/data/service/dashboard_service.dart';

class DashboardProvider {
  final DashboardService _service;
  DashboardProvider(this._service);

  Future<Response?> getTree(String? userName) async =>
      _service.getTree(userName);
}
