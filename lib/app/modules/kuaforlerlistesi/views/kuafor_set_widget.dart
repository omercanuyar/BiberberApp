import 'package:biberberapp/app/data/exercise_sets.dart';
import 'package:biberberapp/app/models/Kuafor.dart';
import 'package:biberberapp/app/services/auth-service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KuaforListesi extends StatelessWidget {
  final Kuafor kuafor;

  const KuaforListesi({
    required this.kuafor,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => setKuafor(kuafor),
        child: Container(
          padding: const EdgeInsets.all(16),
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              Expanded(flex: 3, child: buildText()),
              Expanded(child: new Icon(Icons.man))
            ],
          ),
        ),
      );

  Widget buildText() {
    final kuaforler = kuaforSets.length;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          kuafor.name,
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
        ),
        const SizedBox(height: 10)
      ],
    );
  }

  void setKuafor(Kuafor kuafor) {
    AuthService.kuafor = kuafor;
    Get.toNamed('/marker-page');
  }
}
