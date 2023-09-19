
import 'package:bamo/app/modules/MainNavigation/view.dart';
import 'package:bamo/app/modules/chats/view.dart';
import 'package:bamo/app/modules/home/view.dart';
import 'package:get/get.dart';


class AppPages {
  static List<GetPage<dynamic>>? routes = [

    GetPage(name: AppRoutes.mainNavigation, page: () => MainNavigation()),
    GetPage(name: AppRoutes.home, page: () => HomePage()),
    GetPage(name: AppRoutes.chat, page: () => ChatsScreen()),
  ];
}

class AppRoutes {
  //static const String splash = "/";
  static const String mainNavigation = "/";
  static const String home = '/home';
  static const String chat = '/chats';



}