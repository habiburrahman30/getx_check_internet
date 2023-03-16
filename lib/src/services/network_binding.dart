import 'package:get/get.dart';
import 'package:getx_check_internet/src/controllers/getx_network_manager.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<GetXNetworkManager>(() => GetXNetworkManager());
  }
}
