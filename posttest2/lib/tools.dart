import 'package:flutter/material.dart';

class Tools {
  Widget text({String? s, double? size, FontWeight? weight, Color? color}) {
    return Text(
      s ?? '',
      style: TextStyle(
        fontSize: size,
        fontWeight: weight,
        color: color,
        fontFamily: "sans-serif",
      ),
    );
  }
}
