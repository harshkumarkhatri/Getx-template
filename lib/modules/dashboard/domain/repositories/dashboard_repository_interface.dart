import 'package:getx_initial_setup/modules/dashboard/data/model/tree_model.dart';

abstract class DashboardRepositoryInterface {
  Future<TreeModel?> getTree(String userName) {
    return Future.value();
  }
}
