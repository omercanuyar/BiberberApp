import 'package:get/get.dart';

import '../controllers/marker_page_controller.dart';

class MarkerPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MarkerPageController>(
      () => MarkerPageController(),
    );
  }
}
