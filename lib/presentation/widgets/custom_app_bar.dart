import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      backgroundColor: Colors.white,
      elevation: 3,
      automaticallyImplyLeading: false,
      title: Text(
        "Hola, Rosa",
        style: GoogleFonts.quicksand(
            fontSize: 30, color: Colors.black87, fontWeight: FontWeight.w500),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(70.0);
}
