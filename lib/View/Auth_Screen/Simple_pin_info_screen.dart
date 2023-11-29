import 'package:client/View/Auth_Screen/Common_widget/Btn.dart';
import 'package:client/View/Auth_Screen/Create_Pin_Screen/ui/create_pin_page.dart';
import 'package:client/View/Auth_Screen/otp_verification/OTP_Verification.dart';
import 'package:client/consts/consts.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class SimplePinScreen extends StatelessWidget {
  const SimplePinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: lightGreenApp,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              20.heightBox,
              Container(
                  height:200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0,3),
                    )
                  ],
                  image: const DecorationImage(
                  image: AssetImage(security),
                  fit: BoxFit.fill,
                  )
              )
            ),
              20.heightBox,
              pinText.text.fontFamily(bold).size(20.sp).make(),
              20.heightBox,
              pinText2.text.fontFamily(regular).color(textGrey).make(),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(5),
                child: InkWell(
                    onTap: (){
                      Get.to(CreatePIN());
                    },
                    child: Btn4(text: "Continue", color: darkBlue,icon: Icons.arrow_forward_rounded, iconcolor: whiteColor,)),
              )
      ],
          ),
        ),
      ),
    );
  }
}
