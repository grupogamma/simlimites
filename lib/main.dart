import 'package:app_sim/core/app_router.dart';
import 'package:app_sim/presentation/screens/onboarding/onboarding_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: OnBoardingPage.routeName,
      title: "simlimites",
    );
  }
}
