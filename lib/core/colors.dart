import 'package:flutter/material.dart';
import './size_config.dart';

Color simlimitesPrimaryColor = const Color.fromARGB(255, 0, 190, 243);
Color h1Color = const Color.fromRGBO(0, 0, 0, 0);
Color bodyTextColor = const Color.fromRGBO(56, 54, 54, 0);

//primary title
final kTitle = TextStyle(
  fontSize: SizeConfig.blockSizeH! * 7,
  color: h1Color,
  fontWeight: FontWeight.bold,
);

//body text style
final kbodyText = TextStyle(
  fontFamily: 'Quicksand',
  fontSize: SizeConfig.blockSizeH! * 4.5,
  color: bodyTextColor,
);
