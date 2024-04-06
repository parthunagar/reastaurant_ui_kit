import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app_ui_kit/providers/app_provider.dart';
import 'package:restaurant_app_ui_kit/screens/splash.dart';
import 'package:restaurant_app_ui_kit/util/const.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: ( context,  appProvider,  child) {
        return MaterialApp(
          key: appProvider.key,
          debugShowCheckedModeBanner: false,
          navigatorKey: appProvider.navigatorKey,
          title:  "Restaurant",//Constants.appName,
          theme: appProvider.theme,
          darkTheme: Constants.darkTheme,
          home: SplashScreen(),
        );
      },
    );
  }
}