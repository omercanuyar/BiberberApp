import 'package:biberberapp/app/modules/kuaforlerlistesi/views/kuaforler_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/kuaforlerlistesi_controller.dart';

class KuaforSayfasiView extends GetView<KuaforlerlistesiController> {
  const KuaforSayfasiView({Key? key}) : super(key: key);
  @override
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Scaffold(
          appBar: AppBar(
            title: const Text("Kuaforler"),
          ),
          body: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              KuaforlerWidget(),
            ],
          ),
        ),
      );
}
