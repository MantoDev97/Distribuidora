


import 'package:flutter/material.dart';


Map<int, Color> _swathOpacity ={

50 : const Color.fromRGBO(30, 144, 255, 0.1),
100 : const Color.fromRGBO(30, 144, 255, 0.2),
200 : const Color.fromRGBO(30, 144, 255, 0.3),
300 : const Color.fromRGBO(30, 144, 255, 0.4),
400 : const Color.fromRGBO(30, 144, 255, 0.5),
500 : const Color.fromRGBO(30, 144, 255, 0.6),
600 : const Color.fromRGBO(30, 144, 255, 0.7),
700 : const Color.fromRGBO(30, 144, 255, 0.8),
800 : const Color.fromRGBO(30, 144, 255, 0.9),
900 : const Color.fromRGBO(30, 144, 255, 1),

};

abstract class CustomColors{
  // ignore: non_constant_identifier_names
  static Color CustomContrastColors =  Colors.redAccent.shade700;

  // ignore: non_constant_identifier_names
  static MaterialColor CustomSwathColor = MaterialColor(0x1E90FF, _swathOpacity);
} 