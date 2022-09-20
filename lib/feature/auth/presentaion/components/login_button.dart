import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultButton extends StatelessWidget {
  String title;
  Color buttoncolor;
  Color textcolor;
  double circularRadius;
  double height;
  double width;
  FontWeight fontweight;
  VoidCallback ontap;


  DefaultButton({
    required this.title,
    required this.ontap,
    this.buttoncolor =   Colors.teal,
    this.textcolor = Colors.white,
    this.circularRadius = 40.0,
    this.width = double.infinity,
    this.height = 52,
    this.fontweight = FontWeight.bold});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: ontap,
        child: Text(
            title,
            style:  GoogleFonts.mulish(
            textStyle: TextStyle(
                fontWeight: fontweight,
                color: textcolor,
              ),
            ),

        ),
        style: ElevatedButton.styleFrom(
            primary: buttoncolor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(circularRadius)
            )
        ),
      ),
    );
  }
}
