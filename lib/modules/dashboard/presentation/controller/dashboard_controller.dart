import 'dart:async';
import 'package:get/get.dart';
import 'package:getx_initial_setup/modules/dashboard/data/model/tree_model.dart';
import 'package:getx_initial_setup/modules/dashboard/domain/repositories/dashboard_repository_interface.dart';

class DashboardController extends GetxController {
  final DashboardRepositoryInterface repository;

  DashboardController(
    this.repository,
  );

  // Tree data
  final isTreeDataLoading = false.obs;
  final treeList = const TreeModel().obs;

  @override
  void onReady() async {
    getTree('');

    super.onReady();
  }

  Future<void> getTree(String? userName) async {
    try {
      isTreeDataLoading.value = true;
      final res = await repository.getTree(userName ?? "");
      if (res != null) {
        treeList.value = res;
      }
      isTreeDataLoading.value = false;
    } on Exception catch (_) {
      isTreeDataLoading.value = false;
    } finally {
      isTreeDataLoading.value = false;
    }
  }
}
