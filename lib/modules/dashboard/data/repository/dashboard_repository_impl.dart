import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:getx_initial_setup/core/errors/exception.dart';
import 'package:getx_initial_setup/modules/dashboard/data/model/tree_model.dart';
import 'package:getx_initial_setup/modules/dashboard/data/provider/dashboard_provider.dart';
import 'package:getx_initial_setup/modules/dashboard/domain/repositories/dashboard_repository_interface.dart';

class DashboardRepositoryImpl implements DashboardRepositoryInterface {
  final DashboardProvider _provider;

  DashboardRepositoryImpl(this._provider);

  @override
  Future<TreeModel?> getTree(String? userName) async {
    try {
      final rawData = await _provider.getTree(userName);
      if (rawData != null) {
        final raw = rawData.data as Map<String, dynamic>?;
        if (raw != null) {
          return TreeModel.fromJson(raw);
        }
        return const TreeModel();
      }
    } on DioError catch (e) {
      final _ = e.response?.data['message'];
      // Show Snackbar
    }
    throw NullDataException("hom_couldnotfetchRfqStr".tr);
  }
}
