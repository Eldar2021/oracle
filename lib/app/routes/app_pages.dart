import 'package:get/get.dart';

import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/app/modules/app_page/bindings/app_page_binding.dart';
import 'package:oracle/app/modules/app_page/views/app_page_view.dart';
import 'package:oracle/app/modules/battle/bindings/battle_binding.dart';
import 'package:oracle/app/modules/battle/views/battle_view.dart';
import 'package:oracle/app/modules/battle_detail/bindings/battle_detail_binding.dart';
import 'package:oracle/app/modules/battle_detail/views/battle_detail_view.dart';
import 'package:oracle/app/modules/category/bindings/category_binding.dart';
import 'package:oracle/app/modules/category/views/category_view.dart';
import 'package:oracle/app/modules/filter/bindings/filter_binding.dart';
import 'package:oracle/app/modules/filter/bindings/sort_binding.dart';
import 'package:oracle/app/modules/filter/views/filter_view.dart';
import 'package:oracle/app/modules/filter/views/sort_view.dart';
import 'package:oracle/app/modules/give_review/bindings/give_review_binding.dart';
import 'package:oracle/app/modules/give_review/views/give_review_view.dart';
import 'package:oracle/app/modules/home/bindings/home_binding.dart';
import 'package:oracle/app/modules/home/views/screen_view.dart';
import 'package:oracle/app/modules/login/bindings/auth_phone_binding.dart';
import 'package:oracle/app/modules/login/bindings/login_binding.dart';
import 'package:oracle/app/modules/login/bindings/register_binding.dart';
import 'package:oracle/app/modules/login/bindings/restore_password_binding.dart';
import 'package:oracle/app/modules/login/views/auth_phone_view.dart';
import 'package:oracle/app/modules/login/views/login_view.dart';
import 'package:oracle/app/modules/login/views/register_view.dart';
import 'package:oracle/app/modules/login/views/restore_password_view.dart';
import 'package:oracle/app/modules/play/bindings/play_binding.dart';
import 'package:oracle/app/modules/play/views/play_view.dart';
import 'package:oracle/app/modules/profile/bindings/profile_binding.dart';
import 'package:oracle/app/modules/profile/views/profile_view.dart';

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
    GetPage(
      name: _Paths.CATEGORY,
      page: () => CategoryView(),
      binding: CategoryBinding(),
    ),
    GetPage(
      name: _Paths.FILTER,
      page: () => FilterView(),
      binding: FilterBinding(),
    ),
    GetPage(
      name: _Paths.SORT,
      page: () => SortView(),
      binding: SortBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(user: userModel1),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.PLAY,
      page: () => PlayView(),
      binding: PlayBinding(),
    ),
    GetPage(
      name: _Paths.BATTLE,
      page: () => BattleView(),
      binding: BattleBinding(),
    ),
    GetPage(
      name: _Paths.BATTLE_DETAIL,
      page: () => BattleDetailView(),
      binding: BattleDetailBinding(),
    ),
  ];
}
