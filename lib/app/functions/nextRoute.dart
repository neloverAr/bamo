

import 'package:bamo/app/routes/pages_routes.dart';
import '../core/values/AppConstatns.dart';

String getNextRoute(String currentRoute) => routesMap[currentRoute];


Map routesMap = {
  AppRoutes.splash : AppRoutes.selectUser,
  "${AppRoutes.selectUser} ${Users.employee}": AppRoutes.employeeMainNavigation,
  "${AppRoutes.selectUser} ${Users.employer}": AppRoutes.employerMainNavigation,
  "addIcon": AppRoutes.employerMainNavigation,
  "clipboardIcon": AppRoutes.employeeMainNavigation,
  "locationIcon": AppRoutes.employeeMainNavigation,
  "login": AppRoutes.login,
  "signup": AppRoutes.signup,
};