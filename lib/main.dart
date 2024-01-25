import 'package:family_tree/provider/focusSearch_provider.dart';
import 'package:family_tree/provider/search_provider.dart';
import 'package:family_tree/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'configs/routes_config.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  //enter full-screen
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SearchProvider()),
        ChangeNotifierProvider(create: (_) => FocusSearchProvider()),
      ],
      child: MaterialApp(
        title: 'Family Tree',
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: routersConfig,
        home: const SplashScreen(),
      ),
    );
  }
}
