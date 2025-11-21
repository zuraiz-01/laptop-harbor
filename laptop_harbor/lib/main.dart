import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laptop_harbor/services/supabase_service.dart';
import 'package:laptop_harbor/views/home_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'routes/app_routes.dart';
import 'views/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SupabaseService().init(); // Supabase init

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Chat App',

          theme: ThemeData(
            useMaterial3: true,
            primaryColor: Colors.blue,
            brightness: Brightness.light,
          ),
          darkTheme: ThemeData(
            useMaterial3: true,
            brightness: Brightness.dark,
            primaryColor: Colors.blue,
          ),
          themeMode: ThemeMode.system,
                   initialRoute: AppRoutes.home,
          getPages: AppRoutes.routes,
         // initialRoute: AppRoutes.home,
        //  initialRoute: "/",
        //  getPages: AppRoutes.HomeScreen(),
        );
      },
    );
  }
}
