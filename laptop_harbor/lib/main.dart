import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // ⭐ FIRST: Initialize Supabase
  try {
    await Supabase.initialize(
      url: 'https://vfvvoxumctiaugtqfkbq.supabase.co',
      anonKey:
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZmdnZveHVtY3RpYXVndHFma2JxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjI3NzgxODAsImV4cCI6MjA3ODM1NDE4MH0.1WnKWMkfJRAKqKZsgGreOd3pMs0YOe6Xq8zpKH50sv8",
    );
    print('✅ Supabase initialized successfully');
  } catch (e) {
    print('❌ Failed to initialize Supabase: $e');
    // Optionally, you can show an error dialog or handle the error
  }

  // ⭐ SECOND: Initialize GetX Controllers (NOW SAFE!)
 
  // Get.put(GroupProvider(), permanent: true); // Removed groups functionality

  // ⭐ LAST: Start App
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({Key? key}) : super(key: key);

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
         // initialRoute: AppRoutes.onboarding,
         // getPages: AppRoutes.routes,
        );
      },
    );
  }
}