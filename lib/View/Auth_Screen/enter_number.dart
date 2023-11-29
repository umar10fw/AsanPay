import 'package:client/View/Auth_Screen/Common_widget/Btn.dart';
import 'package:client/View/Auth_Screen/Create_Pin_Screen/ui/create_pin_page.dart';
import 'package:client/View/Auth_Screen/Simple_pin_info_screen.dart';
import 'package:client/View/Auth_Screen/otp_verification/OTP_Verification.dart';
import 'package:client/consts/consts.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import 'Create_Pin_Screen/ui/home_page.dart';


class enter_number extends StatefulWidget {
  const enter_number({Key? key}) : super(key: key);

  @override
  State<enter_number> createState() => _OTPState();
}

class _OTPState extends State<enter_number> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        backgroundColor: greenApp,
        // backgroundColor: EColor.cWhite,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              70.heightBox,
              start.text.size(4.h).fontFamily(bold).color(whiteColor).bold.make(),
              10.heightBox,
              startNumber.text.size(2.5.h).fontFamily(semiBold).color(whiteColor).make(),
              20.heightBox,
              SizedBox(
                width: 70.w,
                child: InternationalPhoneNumberInput(
                  onInputChanged: (PhoneNumber number) {
                    print(number.phoneNumber);
                  },
                  onInputValidated: (bool value) {
                    print(value);
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Required Number!';
                    }
                    return null;
                  },
                  ignoreBlank: false,
                  autoValidateMode: AutovalidateMode.disabled,
                  selectorTextStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  selectorConfig: const SelectorConfig(
                    selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                    setSelectorButtonAsPrefixIcon: false,
                    // leadingPadding: 0,
                    showFlags: true,
                    //trailingSpace: true,
                  ),
                  initialValue: PhoneNumber(isoCode: 'PK'),
                  // textFieldController: _number,
                  formatInput: false,
                  cursorColor: whiteColor,
                  keyboardType: const TextInputType.numberWithOptions(
                      signed: true, decimal: true),
                  inputDecoration: const InputDecoration(
                    hintText: "3012345678",
                    hintStyle: TextStyle(
                        color: whiteColor, letterSpacing: 2),
                    enabledBorder: UnderlineInputBorder(
                      //borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: whiteColor,
                        width: 0.5,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      //borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: whiteColor,
                        width: 0.6,
                      ),
                    ),
                    floatingLabelAlignment:
                    FloatingLabelAlignment.center,
                  ),
                  textStyle: const TextStyle(color: Colors.black),
                  onSaved: (PhoneNumber number) {
                    print('On Saved: $number');
                  },
                ),
              ),
              Spacer(),
              InkWell(
                  onTap: (){
                    Get.to(OtpPassword());
                  },
                  child: Btn4(text: "Continue", color: darkBlue,icon: Icons.arrow_forward_rounded, iconcolor: whiteColor,))

            ],
          ),
        ),
      );
    },
    );
  }
}
