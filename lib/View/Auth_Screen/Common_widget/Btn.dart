import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../consts/consts.dart';

class Btn4 extends StatelessWidget {
  Btn4({Key? key,
    required this.text,
    required this.color,
    this.iconcolor,
    this.icon
  }) : super(key: key);

  String text;
  IconData? icon;
  Color color;
  Color? iconcolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      height: 8.h,
      width: double.infinity,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text,style: const TextStyle(
                fontFamily: semiBold,
                color: whiteColor,
              ),
              ),
              const Spacer(),
              Icon(icon,color: iconcolor,),
            ],
          ),
        ),
      ),
    );
  }
}
