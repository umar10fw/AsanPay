import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class TwoValueText extends StatelessWidget {
  final String text;
  final String text2;
  final Color? clr;
  final Color? txtClr;


  const TwoValueText({
    super.key,
    required this.text,
    required this.text2,
    this.clr,
    this.txtClr,
   });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        padding: const EdgeInsets.only(left: 7,right: 7,bottom: 5,top: 5),
        width: 400,
        child: Card(
          elevation: 8,
          color: clr ?? Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                text,
                style: GoogleFonts.nunito(fontWeight: FontWeight.w600,fontSize: 17.sp),
              ),
              5.heightBox,
              Text(
                    text2,
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w800,
                        color: txtClr ?? Colors.redAccent,
                        fontSize: 18.sp
                    ),
                  ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.arrow_forward_rounded)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
