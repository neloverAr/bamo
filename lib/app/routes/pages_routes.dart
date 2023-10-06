
import 'package:bamo/app/modules/Auth/login/view.dart';
import 'package:bamo/app/modules/Auth/otp/view.dart';
import 'package:bamo/app/modules/Auth/re_set_password/view.dart';
import 'package:bamo/app/modules/Auth/signup/view.dart';
import 'package:bamo/app/modules/MainNavigation/employer/view.dart';
import 'package:bamo/app/modules/SelectUser/view.dart';
import 'package:bamo/app/modules/chats/view.dart';
import 'package:bamo/app/modules/cv/view.dart';
import 'package:bamo/app/modules/freelancer/view.dart';
import 'package:bamo/app/modules/home/employer/view.dart';
import 'package:bamo/app/modules/partTime/view.dart';
import 'package:bamo/app/modules/re_set_password_verfication/view.dart';
import 'package:bamo/app/modules/splash/view.dart';
import 'package:bamo/app/modules/stage/view.dart';
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
    GetPage(name: AppRoutes.otp, page: () => OtpScreen()),
    GetPage(name: AppRoutes.restPasswordStepOne, page: () => RestPasswordStepOneScreen()),
    GetPage(name: AppRoutes.restPasswordStepTwo, page: () => RestPasswordStepTwoScreen()),
    GetPage(name: AppRoutes.partTime, page: () => PartTimeScreen()),
    GetPage(name: AppRoutes.freelance, page: () => FreelancerScreen()),
    GetPage(name: AppRoutes.stage, page: () => StageScreen()),
    GetPage(name: AppRoutes.cvScreen, page: () => CVScreen()),
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
  static const String otp = '/OtpScreen';
  static const String restPasswordStepOne = '/RestPasswordStepOneScreen';
  static const String restPasswordStepTwo = '/RestPasswordStepTwoScreen';
  static const String partTime = '/PartTime';
  static const String freelance = '/Freelance';
  static const String stage = '/stage';
  static const String cvScreen = '/cv';

}