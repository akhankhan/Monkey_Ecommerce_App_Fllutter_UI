import 'package:flutter/material.dart';
import 'package:flutter_monkey_ecommerce/constants.dart';
import 'package:flutter_monkey_ecommerce/src/pages/pages.dart';
import 'package:flutter_monkey_ecommerce/styles/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1080, 2160),
      builder: (context, child) {
        return MaterialApp(
          title: 'Meal Monkey Demo',
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            primarySwatch: mainColorSwatch,
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.transparent,
              elevation: 0,
              titleTextStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                    color: primaryFontColor,
                    fontSize: 20,
                  ),
              actionsIconTheme: const IconThemeData(color: primaryFontColor),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                minimumSize: const Size(double.infinity, 50),
                padding: const EdgeInsets.all(16),
              ),
            ),
            outlinedButtonTheme: OutlinedButtonThemeData(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                side: const BorderSide(
                  color: mainColor,
                ),
                minimumSize: const Size(double.infinity, 50),
                padding: const EdgeInsets.all(16),
              ),
            ),
            inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide.none,
              ),
              floatingLabelStyle: const TextStyle(
                color: secondaryFontColor,
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 28,
              ),
            ),
          ),
          debugShowCheckedModeBanner: false,
          routes: {
            kRouteRoot: (context) => const SplashPage(),
            kRouteIntro: (context) => const IntroPage(),
            kRouteStarter: (context) => const Starter(),
            kRouteLogin: (context) => const LoginPage(),
            kRouteRegister: (context) => RegisterPage(),
            kRouteMain: (context) => const MainPage(),
          },
        );
      },
    );
  }
}
