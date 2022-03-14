import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.store),
        label: "Store",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.memory),
        label: "My sim",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: "Account",
      ),
    ]);
  }
}
