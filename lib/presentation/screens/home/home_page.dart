import 'package:app_sim/presentation/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';
import '../screens.dart';

class HomePage extends StatefulWidget {
  //const HomePage({Key? key}) : super(key: key);

  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => HomePage(),
    );
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetOptions = <Widget>[
      StorePage(),
      MySimPage(),
      AccountPage(),
    ];

    return Scaffold(
      appBar: const CustomAppBar(
        title: "Home",
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_mall_outlined),
            // ignore: deprecated_member_use
            label: 'shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sim_card_outlined),
            // ignore: deprecated_member_use
            label: 'My SIM',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            // ignore: deprecated_member_use
            label: 'account',
          ),
        ],
        currentIndex: _selectedIndex,
        //selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}
