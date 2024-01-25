import 'package:family_tree/screens/changePassword_screen.dart';
import 'package:family_tree/screens/forgotPassword_screen.dart';
import 'package:family_tree/screens/opt_screen.dart';
import 'package:family_tree/screens/resgister_screen.dart';

import '../screens/login_screen.dart';
import '../screens/splash_screen.dart';

var routersConfig = {
  '//': (context) => const SplashScreen(),
  '/login': (context) => const LoginScreen(),
  '/forgot': (context) => const ForgotPasswordScreen(),
  '/register': (context) => const RegisterScreen(),
  '/forgot/change': (context) => const ChangePasswordScreen(),
  '/forgot/otp': (context) => const OptScreen(),
};
