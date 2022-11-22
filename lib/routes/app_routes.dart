import 'package:application4/presentation/start_login_screen/start_login_screen.dart';
import 'package:application4/presentation/start_login_screen/binding/start_login_binding.dart';
import 'package:application4/presentation/app_setting_screen/app_setting_screen.dart';
import 'package:application4/presentation/app_setting_screen/binding/app_setting_binding.dart';
import 'package:application4/presentation/signup_screen/signup_screen.dart';
import 'package:application4/presentation/signup_screen/binding/signup_binding.dart';
import 'package:application4/presentation/keyword_cloud_screen/keyword_cloud_screen.dart';
import 'package:application4/presentation/keyword_cloud_screen/binding/keyword_cloud_binding.dart';
import 'package:application4/presentation/bookmark_screen/bookmark_screen.dart';
import 'package:application4/presentation/bookmark_screen/binding/bookmark_binding.dart';
import 'package:application4/presentation/detail_screen/detail_screen.dart';
import 'package:application4/presentation/detail_screen/binding/detail_binding.dart';
import 'package:application4/presentation/keyword_selection_screen/keyword_selection_screen.dart';
import 'package:application4/presentation/keyword_selection_screen/binding/keyword_selection_binding.dart';
import 'package:application4/presentation/main_screen/main_screen.dart';
import 'package:application4/presentation/main_screen/binding/main_binding.dart';
import 'package:application4/presentation/search_screen/search_screen.dart';
import 'package:application4/presentation/search_screen/binding/search_binding.dart';
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

  static String keywordcloudScreen = '/keyword_cloud_screen';

  static String bookmarkScreen = '/bookmark_screen';

  static String detailScreen = '/detail_screen';

  static String detailtwoScreen = '/detailtwo_screen';

  static String keywordselectionScreen = '/keyword_selection_screen';

  static String mainGalleryScreen = '/main_gallery_screen';

  static String mainScreen = '/main_screen';

  static String mainCardScreen = '/main_card_screen';

  static String searchScreen = '/search_screen';

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
      name: keywordcloudScreen,
      page: () => KeywordCloudScreen(),
      bindings: [
        KeywordCloudBinding(),
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
      name: detailScreen,
      page: () => DetailScreen(),
      bindings: [
        DetailBinding(),
      ],
    ),
    GetPage(
      name: keywordselectionScreen,
      page: () => KeywordSelectionScreen(),
      bindings: [
        KeywordSelectionBinding(),
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
      name: searchScreen,
      page: () => SearchScreen(),
      bindings: [
        SearchBinding(),
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
