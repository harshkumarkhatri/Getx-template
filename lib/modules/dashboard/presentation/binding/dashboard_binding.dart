import 'package:get/get.dart';
import 'package:getx_initial_setup/modules/dashboard/data/provider/dashboard_provider.dart';
import 'package:getx_initial_setup/modules/dashboard/data/repository/dashboard_repository_impl.dart';
import 'package:getx_initial_setup/modules/dashboard/data/service/dashboard_service.dart';
import 'package:getx_initial_setup/modules/dashboard/domain/repositories/dashboard_repository_interface.dart';
import 'package:getx_initial_setup/modules/dashboard/presentation/controller/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardService());
    Get.lazyPut(() => DashboardProvider(Get.find()));
    Get.lazyPut<DashboardRepositoryInterface>(
        () => DashboardRepositoryImpl(Get.find()));
    Get.lazyPut(
      () => DashboardController(
        Get.find(),
      ),
    );
  }
}
