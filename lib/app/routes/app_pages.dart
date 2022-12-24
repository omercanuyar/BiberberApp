import 'package:get/get.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/kuaforlerlistesi/bindings/kuaforlerlistesi_binding.dart';
import '../modules/kuaforlerlistesi/views/kuafor_sayfasi_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/marker_page/bindings/marker_page_binding.dart';
import '../modules/marker_page/views/marker_page_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;
  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.MARKER_PAGE,
      page: () => const MarkerPageView(),
      binding: MarkerPageBinding(),
    ),
    GetPage(
      name: _Paths.KUAFORLERLISTESI,
      page: () => KuaforSayfasiView(),
      binding: KuaforlerlistesiBinding(),
    ),
  ];
}
