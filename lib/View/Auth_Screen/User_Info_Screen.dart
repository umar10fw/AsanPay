import 'package:client/View/Auth_Screen/Common_widget/Btn.dart';
import 'package:client/View/Home/homeMain.dart';
import 'package:client/consts/consts.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class UserInfoScreen extends StatelessWidget {
  const UserInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.heightBox,
              userScreen.text.fontFamily(bold).size(20.sp).make(),
              10.heightBox,
              userInfoText.text.color(Colors.grey.shade600).fontFamily(regular).size(13.sp).make(),
              30.heightBox,
              userNameText.text.fontFamily(regular).color(Colors.grey.shade600).make(),
              5.heightBox,
              SizedBox(
                height: 50,
                child: Container(
                  decoration: BoxDecoration(
                    color: white, // <--- change this
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    cursorColor: Colors.black,
                    // controller: _emailController,
                    autocorrect: false,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(

                      filled: true, // <-- add filled
                      fillColor: Colors.grey.shade200, // <--- and this
                      prefixIcon: const Icon(
                        Icons.person,
                        color: darkVeryBlue,
                      ),
                      border: const OutlineInputBorder(
                         borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                          ),
                         ),
                      hintText: "Name",
                      hintStyle: TextStyle(
                        color: Colors.grey.shade600
                      )
                    ),
                  ),
                ),
              ),
              20.heightBox,
              userEmailText.text.fontFamily(regular).color(Colors.grey.shade600).make(),
              5.heightBox,
              SizedBox(
                height: 50,
                child: Container(
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    cursorColor: Colors.black,
                    // controller: _emailController,
                    autocorrect: false,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.shade200, // <--- and this
                      prefixIcon: const Icon(
                        Icons.email_outlined,
                        color: darkVeryBlue,
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      hintText: "Email",
                        hintStyle: TextStyle(
                            color: Colors.grey.shade600
                        )
                    ),
                  ),
                ),
              ),
              20.heightBox,
              userConditionText.text.fontFamily(regular).color(darkVeryBlue).make(),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(5),
                child: InkWell(
                    onTap: (){
                      Get.to(HomePage());
                    },
                    child: Btn4(text: "Continue", color: darkBlue,icon: Icons.arrow_forward_rounded, iconcolor: whiteColor,)),
              ),

          ],
          ),
        ),
      ),
    );
  }
}
