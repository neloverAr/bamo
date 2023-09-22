
import 'package:bamo/app/modules/Auth/login/view.dart';
import 'package:bamo/app/modules/Auth/signup/view.dart';
import 'package:bamo/app/modules/MainNavigation/employer/view.dart';
import 'package:bamo/app/modules/SelectUser/view.dart';
import 'package:bamo/app/modules/chats/view.dart';
import 'package:bamo/app/modules/home/employer/view.dart';
import 'package:bamo/app/modules/splash/view.dart';
import 'package:get/get.dart';
import '../modules/MainNavigation/employee/view.dart';
import '../modules/home/employee/view.dart';

class AppPages {
  static List<GetPage<dynamic>>? routes = [
    GetPage(name: AppRoutes.splash, page: () => SplashScreen()),
    GetPage(name: AppRoutes.selectUser, page: () => SelectUserScreen()),
    GetPage(name: AppRoutes.employerMainNavigation, page: () => EmployerMainNavigation()),
    GetPage(name: AppRoutes.employerHome, page: () => EmployerHomePage()),
    GetPage(name: AppRoutes.employeeMainNavigation, page: () => EmployeeMainNavigation()),
    GetPage(name: AppRoutes.employeeHome, page: () => EmployeeHomePage()),
    GetPage(name: AppRoutes.chat, page: () => ChatsScreen()),
    GetPage(name: AppRoutes.login, page: () => LoginScreen()),
    GetPage(name: AppRoutes.signup, page: () => SignupScreen()),
  ];
}

class AppRoutes {
  static const String splash = "/";
  static const String selectUser = "/selectUser";
  static const String employerMainNavigation = "/employerMainNavigation";
  static const String employerHome = '/employerHome';
  static const String employeeMainNavigation = "/employeeMainNavigation";
  static const String employeeHome = '/employeeHome';
  static const String chat = '/chats';
  static const String login = '/login';
  static const String signup = '/signup';



}