import 'package:app_giao_hang/pages/home/index.dart';
import 'package:app_giao_hang/pages/login/index.dart';
import 'package:app_giao_hang/pages/main_page.dart';
import 'package:app_giao_hang/pages/onboarding/index.dart';
import 'package:app_giao_hang/pages/splashScreen/splash_screen.dart';

class AppRoutes {
  static final pages = {
    '/onboarding': (context) => const Onboarding(),
    '/splashScreen': (context) => const SplashScreen(),
    '/home': (context) => const Home(),
    '/login': (context) => const Login(),
    '/mainPage': (context) => const MainPage(),
  };
  static const onboarding = '/onboarding';
  static const mainPage = '/mainPage';
  static const home = '/home';
  static const splashScreen = '/splashScreen';
  static const login = '/login';
}
