import 'package:client/View/Auth_Screen/Common_widget/Btn.dart';
import 'package:client/View/Auth_Screen/Create_Pin_Screen/ui/create_pin_page.dart';
import 'package:client/View/Auth_Screen/Simple_pin_info_screen.dart';
import 'package:client/consts/consts.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class OtpPassword extends StatefulWidget {
  const OtpPassword({Key? key}) : super(key: key);

  @override
  State<OtpPassword> createState() => _OtpPasswordState();
}

class _OtpPasswordState extends State<OtpPassword> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        backgroundColor: greenApp,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: (const Icon(Icons.arrow_back,color: whiteColor,)),
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 6.h,),
              const Text(
                'Enter Verification Code',style: TextStyle(
                fontFamily: bold,
                fontSize: 25,
                color: white
              ),),
              SizedBox(height: 1.h,),
              const Text("We've sent it to +923001262610",
                style: TextStyle(
                  fontFamily: regular,
                  fontSize: 15,
                  color: white
                ),
                ),
              SizedBox(
                height: 7.h,
              ),
              OtpTextField(
                textStyle: const TextStyle(
                  fontFamily: bold,
                  fontSize: 20,
                  color: darkVeryBlue
                ),
                margin: const EdgeInsets.symmetric(
                    horizontal: 10
                ),
                focusedBorderColor: darkVeryBlue,
                numberOfFields: 4,
                borderColor: const Color(0xFF08C25E),
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                onCodeChanged: (String code) {
                },
                onSubmit: (String verificationCode){
                  // showDialog(
                  //     context: context,
                  //     builder: (context){
                  //       return AlertDialog(
                  //         title: Text("Verification Code"),
                  //         content: Text('Code entered is $verificationCode'),
                  //       );
                  //     }
                  // );
                }, // end onSubmit
              ),
              SizedBox(
                height: 7.h,
              ),
              TextButton(
                  onPressed: (){},
                  child: const Text(
                   "Resend OTP",
                   style: TextStyle(
                     fontFamily: bold,
                     fontSize: 14,
                     color: darkVeryBlue
                   ),
                  )

              ),
              SizedBox(
                height: 7.h,
              ),
              const Spacer(),
              InkWell(
                onTap: (){
                  Get.to(const SimplePinScreen());
                },
                child: Btn4(
                  text: "Verify",
                  color: darkVeryBlue,
                  icon: Icons.arrow_forward_rounded,
                  iconcolor: whiteColor,
                ),
              )

            ],
          ),
        ),
      );
    },
    );
  }
}
