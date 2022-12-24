import 'package:firebase_core/firebase_core.dart';
import 'package:biberberapp/app/services/auth-service.dart';
import 'package:biberberapp/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter_android/google_maps_flutter_android.dart';
import 'package:google_maps_flutter_platform_interface/google_maps_flutter_platform_interface.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() async {
  final GoogleMapsFlutterPlatform mapsImplementation =
      GoogleMapsFlutterPlatform.instance;
  if (mapsImplementation is GoogleMapsFlutterAndroid) {
    mapsImplementation.useAndroidViewSurface = true;
  }
  //firebase dahil ediliyor
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    //getx kütüphanesi dahil edilerek material app  çağırılıyor
    GetMaterialApp(
      title: "Application",
      initialBinding: BindingsBuilder(
        () {
          Get.put(AuthService());
        },
      ),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
