import 'package:app_sim/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  static const String routeName = '/welcome';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => OnBoardingPage(),
    );
  }

  static const String _title = 'Bienvenido';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(_title,
                  style: GoogleFonts.quicksand(
                    fontSize: 40,
                    color: simlimitesPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ))),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: const Text("homepage"))
        ],
      ),
    );
  }
}
