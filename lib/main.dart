import 'package:bamo/app/core/values/colors.dart';
import 'package:bamo/app/data/services/storage/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'app/core/utils/keys.dart';
import 'app/routes/pages_routes.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await GetStorage.init();
  await initialServices();
  StorageService storageService = Get.find();
  storageService.write(isLoggedIn, false);
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_ , child){
        return GetMaterialApp(
          theme: ThemeData(
              useMaterial3: false,
              fontFamily: "Poppins",
            primaryColor: AppColor.primaryColor
          ),
          getPages: AppPages.routes,
          title: 'Bamo',
          debugShowCheckedModeBanner: false,
          //home: const SplashScreen(),
        );
      },
    );
  }
}
