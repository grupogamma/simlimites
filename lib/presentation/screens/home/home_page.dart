import 'package:app_sim/presentation/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  //const HomePage({Key? key}) : super(key: key);

  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      bottomNavigationBar: CustomNavBar(),
      body: const Center(
        child: Text("Homepage"),
      ),
    );
  }
}
