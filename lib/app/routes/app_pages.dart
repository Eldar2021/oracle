import 'package:get/get.dart';
import 'package:oracle/app/data/models/battle_model/battle_model.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/app/modules/app_page/bindings/app_page_binding.dart';
import 'package:oracle/app/modules/app_page/views/app_page_view.dart';
import 'package:oracle/app/modules/battle/bindings/battle_binding.dart';
import 'package:oracle/app/modules/battle/views/battle_view.dart';
import 'package:oracle/app/modules/battle_detail/bindings/battle_detail_binding.dart';
import 'package:oracle/app/modules/battle_detail/bindings/battle_detail_status_binding.dart';
import 'package:oracle/app/modules/battle_detail/bindings/battle_detail_tab_bar_binding.dart';
import 'package:oracle/app/modules/battle_detail/bindings/select_performer_binding.dart';
import 'package:oracle/app/modules/battle_detail/views/battle_detail_status.dart';
import 'package:oracle/app/modules/battle_detail/views/battle_detail_view.dart';
import 'package:oracle/app/modules/battle_detail/views/battle_detail_view_tab_bar.dart';
import 'package:oracle/app/modules/battle_detail/views/select_performer_view.dart';
import 'package:oracle/app/modules/category/bindings/category_binding.dart';
import 'package:oracle/app/modules/category/views/category_view.dart';
import 'package:oracle/app/modules/create_battle/bindings/create_battle_binding.dart';
import 'package:oracle/app/modules/create_battle/views/create_battle_view.dart';
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
import 'package:oracle/app/modules/profile/bindings/change_password_binding.dart';
import 'package:oracle/app/modules/profile/bindings/personal_info_binding.dart';
import 'package:oracle/app/modules/profile/bindings/profile_binding.dart';
import 'package:oracle/app/modules/profile/bindings/settings_binding.dart';
import 'package:oracle/app/modules/profile/views/changed_password_view.dart';
import 'package:oracle/app/modules/profile/views/personal_information_view.dart';
import 'package:oracle/app/modules/profile/views/profile_view.dart';
import 'package:oracle/app/modules/profile/views/setting_view.dart';
import 'package:oracle/app/modules/respon/bindings/respon_binding.dart';
import 'package:oracle/app/modules/respon/views/respon_view.dart';

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
      page: () => CategoryView(battle: battle1),
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
      page: () => BattleDetailView(battle: battle1, isStatus: true),
      binding: BattleDetailBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_BATTLE,
      page: () => CreateBattleView(),
      binding: CreateBattleBinding(),
    ),
    GetPage(
      name: _Paths.RESPON,
      page: () => ResponView(),
      binding: ResponBinding(),
    ),
    GetPage(
      name: _Paths.BATTLE_DETAIL_TAB_BAR,
      page: () => BattleDetailViewTabBar(battle: battle1),
      binding: BattleDetailTabBarBinding(),
    ),
    GetPage(
      name: _Paths.BATTLE_DETAIL_STATUS,
      page: () => BattleDetailStatusView(battle: battle1),
      binding: BattleDetailStatusBinding(),
    ),
    GetPage(
      name: _Paths.SELECT_PERFORMER,
      page: () => SelectPerformerView(),
      binding: SelectPerformerBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.PERSONAL_INFO,
      page: () => PersonalInfoView(),
      binding: PersonalInfoBinding(),
    ),
    GetPage(
      name: _Paths.CHANGE_PASSWORD,
      page: () => ChangedPasswordView(),
      binding: ChangePasswordBinding(),
    ),
  ];
}
