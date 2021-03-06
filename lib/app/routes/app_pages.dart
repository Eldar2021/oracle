import 'package:get/get.dart';

import 'package:oracle/app/data/models/battle_model/battle_model.dart';
import 'package:oracle/app/modules/about/bindings/about_binding.dart';
import 'package:oracle/app/modules/about/views/about_view.dart';
import 'package:oracle/app/modules/answer/bindings/answer_binding.dart';
import 'package:oracle/app/modules/answer/views/answer_view.dart';
import 'package:oracle/app/modules/app_page/bindings/app_page_binding.dart';
import 'package:oracle/app/modules/app_page/views/app_page_view.dart';
import 'package:oracle/app/modules/balance/bindings/balance_binding.dart';
import 'package:oracle/app/modules/balance/views/balance_view.dart';
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
import 'package:oracle/app/modules/create_battle/bindings/add_gamer_binding.dart';
import 'package:oracle/app/modules/create_battle/bindings/battle_format_binding.dart';
import 'package:oracle/app/modules/create_battle/bindings/create_battle_binding.dart';
import 'package:oracle/app/modules/create_battle/bindings/publish_game_binding.dart';
import 'package:oracle/app/modules/create_battle/views/add_gamer_view.dart';
import 'package:oracle/app/modules/create_battle/views/battle_format_view.dart';
import 'package:oracle/app/modules/create_battle/views/create_battle_view.dart';
import 'package:oracle/app/modules/create_battle/views/publish_game_view.dart';
import 'package:oracle/app/modules/filter/bindings/category_binding.dart';
import 'package:oracle/app/modules/filter/bindings/filter_binding.dart';
import 'package:oracle/app/modules/filter/bindings/sort_binding.dart';
import 'package:oracle/app/modules/filter/views/category_view.dart';
import 'package:oracle/app/modules/filter/views/filter_view.dart';
import 'package:oracle/app/modules/filter/views/sort_view.dart';
import 'package:oracle/app/modules/give_review/bindings/give_review_binding.dart';
import 'package:oracle/app/modules/give_review/views/give_review_view.dart';
import 'package:oracle/app/modules/help/bindings/help_binding.dart';
import 'package:oracle/app/modules/help/views/help_view.dart';
import 'package:oracle/app/modules/home/bindings/home_binding.dart';
import 'package:oracle/app/modules/home/bindings/play_detail_binding.dart';
import 'package:oracle/app/modules/home/bindings/screen_binding.dart';
import 'package:oracle/app/modules/home/views/play_detail_view.dart';
import 'package:oracle/app/modules/home/views/screen_view.dart';
import 'package:oracle/app/modules/identification/bindings/identification_binding.dart';
import 'package:oracle/app/modules/identification/views/identification_view.dart';
import 'package:oracle/app/modules/login/bindings/auth_phone_binding.dart';
import 'package:oracle/app/modules/login/bindings/code_binding.dart';
import 'package:oracle/app/modules/login/bindings/login_binding.dart';
import 'package:oracle/app/modules/login/bindings/register_binding.dart';
import 'package:oracle/app/modules/login/bindings/restore_password_binding.dart';
import 'package:oracle/app/modules/login/views/auth_phone_view.dart';
import 'package:oracle/app/modules/login/views/code_view.dart';
import 'package:oracle/app/modules/login/views/login_view.dart';
import 'package:oracle/app/modules/login/views/register_view.dart';
import 'package:oracle/app/modules/login/views/restore_password_view.dart';
import 'package:oracle/app/modules/notification/bindings/notification_binding.dart';
import 'package:oracle/app/modules/notification/views/notification_view.dart';
import 'package:oracle/app/modules/play/bindings/filter_plays_view_binding.dart';
import 'package:oracle/app/modules/play/bindings/play_binding.dart';
import 'package:oracle/app/modules/play/views/filter_plays_view_view.dart';
import 'package:oracle/app/modules/play/views/play_view.dart';
import 'package:oracle/app/modules/profile/bindings/change_password_binding.dart';
import 'package:oracle/app/modules/profile/bindings/personal_info_binding.dart';
import 'package:oracle/app/modules/profile/bindings/player_profile_binding.dart';
import 'package:oracle/app/modules/profile/bindings/profile_binding.dart';
import 'package:oracle/app/modules/profile/bindings/settings_binding.dart';
import 'package:oracle/app/modules/profile/views/changed_password_view.dart';
import 'package:oracle/app/modules/profile/views/personal_information_view.dart';
import 'package:oracle/app/modules/profile/views/player_profile_view.dart';
import 'package:oracle/app/modules/profile/views/profile_view.dart';
import 'package:oracle/app/modules/profile/views/setting_view.dart';
import 'package:oracle/app/modules/respon/bindings/respon_binding.dart';
import 'package:oracle/app/modules/respon/views/respon_view.dart';
import 'package:oracle/app/modules/respond/bindings/reslpond_battle_binding.dart';
import 'package:oracle/app/modules/respond/bindings/respond_add_gamer_binding.dart';
import 'package:oracle/app/modules/respond/views/respond_add_gamer_view.dart';
import 'package:oracle/app/modules/respond/views/respond_battle_view.dart';

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
      name: _Paths.SCREEN,
      page: () => ScreenView(),
      binding: ScreenBinding(),
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
      page: () => ProfileView(),
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
      name: _Paths.BATTLE_FORMAT,
      page: () => BattleFormatView(),
      binding: BattleFormatBinding(),
    ),
    GetPage(
      name: _Paths.ADD_GAMER,
      page: () => AddGamerView(),
      binding: AddGamerBinding(),
    ),
    GetPage(
      name: _Paths.PUBLISH_GAME,
      page: () => PublishGameView(),
      binding: PublishGameBinding(),
    ),
    GetPage(
      name: _Paths.BATTLE_DETAIL_TAB_BAR,
      page: () => BattleDetailViewTabBar(),
      binding: BattleDetailTabBarBinding(),
    ),
    GetPage(
      name: _Paths.BATTLE_DETAIL_STATUS,
      page: () => BattleDetailStatusView(),
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
    GetPage(
      name: _Paths.ANSWER,
      page: () => AnswerView(),
      binding: AnswerBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => NotificationView(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: _Paths.HELP,
      page: () => HelpView(),
      binding: HelpBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT,
      page: () => AboutView(),
      binding: AboutBinding(),
    ),
    GetPage(
      name: _Paths.IDENTIFICATION,
      page: () => IdentificationView(),
      binding: IdentificationBinding(),
    ),
    GetPage(
      name: _Paths.PLAY_DETAIL,
      page: () => PlayDetailView(),
      binding: PlayDetailBinding(),
    ),
    GetPage(
      name: _Paths.RESPOND_BATTLE,
      page: () => RespondBattleView(),
      binding: RespondBattleBinding(),
    ),
    GetPage(
      name: _Paths.RESPOND_ADD_GAMER,
      page: () => RespondAddGamerView(),
      binding: RespondAddGamerBinding(),
    ),
    GetPage(
      name: _Paths.CODE,
      page: () => CodeView(),
      binding: CodeBinding(),
    ),
    GetPage(
      name: _Paths.PLAYER_PROFILE,
      page: () => PlayerProfileView(),
      binding: PlayerProfileBinding(),
    ),
    GetPage(
      name: _Paths.FILTER_PLAYS_VIEW,
      page: () => FilterPlaysViewView(),
      binding: FilterPlaysViewBinding(),
    ),
    GetPage(
      name: _Paths.BALANCE,
      page: () => BalanceView(),
      binding: BalanceBinding(),
    ),
  ];
}
