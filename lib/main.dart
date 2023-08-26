import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:connectivity/connectivity.dart'; // Import the connectivity package
import 'package:firebase_weather_app/utils/noInternet.dart';
import 'Pages/login_page.dart';
import 'Pages/weather_home_page.dart';
import 'controllers/auth_controller.dart';
import 'package:firebase_core/firebase_core.dart'; // Import Firebase Core


void main() async {
  final AuthController authController = Get.put(AuthController());
  authController.checkAuthStatus();

  Connectivity().checkConnectivity().then((connectivityResult) async {
    if (connectivityResult != ConnectivityResult.none) {
      WidgetsFlutterBinding.ensureInitialized(); // Ensure Flutter is initialized
      await Firebase.initializeApp(); // Initialize Firebase
      runApp(MyApp());
    } else {
      runApp(NoInternetApp());
    }
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => LoginPage()),
        GetPage(name: '/weather_home', page: () => WeatherHomePage()),

      ],

    );
  }
}

