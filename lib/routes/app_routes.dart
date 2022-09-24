import 'package:application4/presentation/start_login_screen/start_login_screen.dart';
import 'package:application4/presentation/start_login_screen/binding/start_login_binding.dart';
import 'package:application4/presentation/find_idpw_screen/find_idpw_screen.dart';
import 'package:application4/presentation/find_idpw_screen/binding/find_idpw_binding.dart';
import 'package:application4/presentation/app_setting_screen/app_setting_screen.dart';
import 'package:application4/presentation/app_setting_screen/binding/app_setting_binding.dart';
import 'package:application4/presentation/signup_screen/signup_screen.dart';
import 'package:application4/presentation/signup_screen/binding/signup_binding.dart';
import 'package:application4/presentation/android_large_four_screen/android_large_four_screen.dart';
import 'package:application4/presentation/android_large_four_screen/binding/android_large_four_binding.dart';
import 'package:application4/presentation/round_select_screen/round_select_screen.dart';
import 'package:application4/presentation/round_select_screen/binding/round_select_binding.dart';
import 'package:application4/presentation/selection_screen/selection_screen.dart';
import 'package:application4/presentation/selection_screen/binding/selection_binding.dart';
import 'package:application4/presentation/worldcup_screen/worldcup_screen.dart';
import 'package:application4/presentation/worldcup_screen/binding/worldcup_binding.dart';
import 'package:application4/presentation/main_two_screen/main_two_screen.dart';
import 'package:application4/presentation/main_two_screen/binding/main_two_binding.dart';
import 'package:application4/presentation/main_next_screen/main_next_screen.dart';
import 'package:application4/presentation/main_next_screen/binding/main_next_binding.dart';
import 'package:application4/presentation/bookmark_screen/bookmark_screen.dart';
import 'package:application4/presentation/bookmark_screen/binding/bookmark_binding.dart';
import 'package:application4/presentation/detailone_screen/detailone_screen.dart';
import 'package:application4/presentation/detailone_screen/binding/detailone_binding.dart';
import 'package:application4/presentation/detailtwo_screen/detailtwo_screen.dart';
import 'package:application4/presentation/detailtwo_screen/binding/detailtwo_binding.dart';
import 'package:application4/presentation/detailthree_screen/detailthree_screen.dart';
import 'package:application4/presentation/detailthree_screen/binding/detailthree_binding.dart';
import 'package:application4/presentation/main_gallery_screen/main_gallery_screen.dart';
import 'package:application4/presentation/main_gallery_screen/binding/main_gallery_binding.dart';
import 'package:application4/presentation/main_screen/main_screen.dart';
import 'package:application4/presentation/main_screen/binding/main_binding.dart';
import 'package:application4/presentation/main_card_screen/main_card_screen.dart';
import 'package:application4/presentation/main_card_screen/binding/main_card_binding.dart';
import 'package:application4/presentation/two_screen/two_screen.dart';
import 'package:application4/presentation/two_screen/binding/two_binding.dart';
import 'package:application4/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:application4/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String startLoginScreen = '/start_login_screen';

  static String findIdpwScreen = '/find_idpw_screen';

  static String appSettingScreen = '/app_setting_screen';

  static String signupScreen = '/signup_screen';

  static String androidLargeFourScreen = '/android_large_four_screen';

  static String roundSelectScreen = '/round_select_screen';

  static String selectionScreen = '/selection_screen';

  static String worldcupScreen = '/worldcup_screen';

  static String mainTwoScreen = '/main_two_screen';

  static String mainNextScreen = '/main_next_screen';

  static String bookmarkScreen = '/bookmark_screen';

  static String detailoneScreen = '/detailone_screen';

  static String detailtwoScreen = '/detailtwo_screen';

  static String detailthreeScreen = '/detailthree_screen';

  static String mainGalleryScreen = '/main_gallery_screen';

  static String mainScreen = '/main_screen';

  static String mainCardScreen = '/main_card_screen';

  static String twoScreen = '/two_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: startLoginScreen,
      page: () => StartLoginScreen(),
      bindings: [
        StartLoginBinding(),
      ],
    ),
    GetPage(
      name: findIdpwScreen,
      page: () => FindIdpwScreen(),
      bindings: [
        FindIdpwBinding(),
      ],
    ),
    GetPage(
      name: appSettingScreen,
      page: () => AppSettingScreen(),
      bindings: [
        AppSettingBinding(),
      ],
    ),
    GetPage(
      name: signupScreen,
      page: () => SignupScreen(),
      bindings: [
        SignupBinding(),
      ],
    ),
    GetPage(
      name: androidLargeFourScreen,
      page: () => AndroidLargeFourScreen(),
      bindings: [
        AndroidLargeFourBinding(),
      ],
    ),
    GetPage(
      name: roundSelectScreen,
      page: () => RoundSelectScreen(),
      bindings: [
        RoundSelectBinding(),
      ],
    ),
    GetPage(
      name: selectionScreen,
      page: () => SelectionScreen(),
      bindings: [
        SelectionBinding(),
      ],
    ),
    GetPage(
      name: worldcupScreen,
      page: () => WorldcupScreen(),
      bindings: [
        WorldcupBinding(),
      ],
    ),
    GetPage(
      name: mainTwoScreen,
      page: () => MainTwoScreen(),
      bindings: [
        MainTwoBinding(),
      ],
    ),
    GetPage(
      name: mainNextScreen,
      page: () => MainNextScreen(),
      bindings: [
        MainNextBinding(),
      ],
    ),
    GetPage(
      name: bookmarkScreen,
      page: () => BookmarkScreen(),
      bindings: [
        BookmarkBinding(),
      ],
    ),
    GetPage(
      name: detailoneScreen,
      page: () => DetailoneScreen(),
      bindings: [
        DetailoneBinding(),
      ],
    ),
    GetPage(
      name: detailtwoScreen,
      page: () => DetailtwoScreen(),
      bindings: [
        DetailtwoBinding(),
      ],
    ),
    GetPage(
      name: detailthreeScreen,
      page: () => DetailthreeScreen(),
      bindings: [
        DetailthreeBinding(),
      ],
    ),
    GetPage(
      name: mainGalleryScreen,
      page: () => MainGalleryScreen(),
      bindings: [
        MainGalleryBinding(),
      ],
    ),
    GetPage(
      name: mainScreen,
      page: () => MainScreen(),
      bindings: [
        MainBinding(),
      ],
    ),
    GetPage(
      name: mainCardScreen,
      page: () => MainCardScreen(),
      bindings: [
        MainCardBinding(),
      ],
    ),
    GetPage(
      name: twoScreen,
      page: () => TwoScreen(),
      bindings: [
        TwoBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => StartLoginScreen(),
      bindings: [
        StartLoginBinding(),
      ],
    )
  ];
}
