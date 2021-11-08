import 'package:get/get.dart';

import 'package:oracle/app/modules/app_page/bindings/app_page_binding.dart';
import 'package:oracle/app/modules/app_page/views/app_page_view.dart';
import 'package:oracle/app/modules/home/bindings/give_reriew_binding.dart';
import 'package:oracle/app/modules/home/bindings/home_binding.dart';
import 'package:oracle/app/modules/home/views/give_review_view.dart';
import 'package:oracle/app/modules/home/views/screen_view.dart';
import 'package:oracle/app/modules/login/bindings/auth_phone_binding.dart';
import 'package:oracle/app/modules/login/bindings/login_binding.dart';
import 'package:oracle/app/modules/login/bindings/register_binding.dart';
import 'package:oracle/app/modules/login/bindings/restore_password_binding.dart';
import 'package:oracle/app/modules/login/views/auth_phone_view.dart';
import 'package:oracle/app/modules/login/views/login_view.dart';
import 'package:oracle/app/modules/login/views/register_view.dart';
import 'package:oracle/app/modules/login/views/restore_password_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => ScreenView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.APP_PAGE,
      page: () => AppPageView(),
      binding: AppPageBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.AUTH_PHONE,
      page: () => AuthPhoneView(),
      binding: AuthPhoneBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.RESTORE_PASSWORD,
      page: () => RestorePasswordView(),
      binding: RestorePasswordBinding(),
    ),
    GetPage(
      name: _Paths.GIVE_REVIEW,
      page: () => GiveReviewView(),
      binding: GiveReviewBinding(),
    ),
  ];
}
