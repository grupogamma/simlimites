import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;

  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 1,
      title: Text(
        title,
        style: const TextStyle(color: Colors.black, fontSize: 20),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
