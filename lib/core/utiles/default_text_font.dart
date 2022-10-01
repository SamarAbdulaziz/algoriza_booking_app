import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultTextFont extends StatelessWidget {

  String title;
  double size;
  FontWeight fontweight;
  Color? titlecolor;
  double height;
  TextAlign titleAlign;
  DefaultTextFont({super.key,
    required this.title,
    this.size=15,
    this.fontweight= FontWeight.w700,
    this.titlecolor=Colors.black,
    this.height=0,
    this.titleAlign=TextAlign.left
  });
  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: titleAlign,
        style: GoogleFonts.mulish(
            textStyle: TextStyle(
                fontSize: size,
                fontWeight: fontweight,
                color: titlecolor,
                height: height
            ))
    );
  }
}
