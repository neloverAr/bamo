import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'app/routes/pages_routes.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
