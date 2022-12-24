import 'package:get/get.dart';

import '../controllers/kuaforlerlistesi_controller.dart';

class KuaforlerlistesiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KuaforlerlistesiController>(
      () => KuaforlerlistesiController(),
    );
  }
}
