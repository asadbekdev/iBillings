import 'package:flutter/material.dart';

class ColorManager {
  static Color primary = HexColor.fromHex("#00A795");
  static Color lightGreen = HexColor.fromHex("#00A795");
  static Color darkGreen = HexColor.fromHex("#008F7F");
  static Color black = HexColor.fromHex("#000000");
  static Color lightDark = HexColor.fromHex("#4E4E4E");
  static Color dark = HexColor.fromHex("#2A2A2D");
  static Color darker = HexColor.fromHex("#1E1E20");
  static Color darkest = HexColor.fromHex("#141416");
  static Color red = HexColor.fromHex("#FF426D");
  static Color lightRed = HexColor.fromHex("#F85379");
  static Color lightGrey1 = HexColor.fromHex("#F1F1F1");
  static Color lightGrey = HexColor.fromHex("#F2F2F2");
  static Color grey = HexColor.fromHex("#A6A6A6");
  static Color grey1 = HexColor.fromHex("#DADADA");
  static Color grey2 = HexColor.fromHex("##D1D1D1");
  static Color darkGrey = HexColor.fromHex("#999999");
  static Color white = HexColor.fromHex("#FFFFFF");
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF" + hexColorString; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
