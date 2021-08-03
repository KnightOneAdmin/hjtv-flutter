import 'package:flutter/material.dart';

/*
00%=FF（不透明） 
5%=F2 
10%=E5 
15%=D8 
20%=CC 
25%=BF 
30%=B2 
35%=A5 
40%=99 
45%=8c 
50%=7F 
55%=72 
60%=66 
65%=59 
70%=4c 
75%=3F 
80%=33 
85%=21 
90%=19 
95%=0c 
100%=00（全透明）
*/
class HexColor extends Color {
  static int _getColorFromHex(String hexColor, {String opcity = "FF"}) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = opcity + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
