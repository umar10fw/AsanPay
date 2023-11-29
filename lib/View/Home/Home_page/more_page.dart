import 'package:client/consts/consts.dart';
import 'package:velocity_x/velocity_x.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                20.heightBox,
                Container(
                  decoration: BoxDecoration(
                      color: white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 17,
                      backgroundColor: Colors.green.shade100,
                      child: Icon(Icons.person,color: greenApp,),
                    ),
                    title: "Account Holder Name".text.fontFamily(bold).color(Colors.black).size(16).make(),
                    // subtitle: "Date".text.fontFamily(regular).color(fontBlack).size(5).make(),
                    // trailing: "Amount".text.fontFamily(regular).color(fontBlack).size(13).make(),
                  ),
                ),
                10.heightBox,
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        "Limit".text.fontFamily(regular).color(Colors.grey).size(16).make(),
                        10.heightBox,
                        Row(
                          children: [
                            "Incoming".text.fontFamily(bold).color(Colors.black).size(16).make(),
                            Spacer(),
                            "Rs: 400,000 left".text.fontFamily(bold).color(greenApp).size(16).make()
                          ],
                        ),
                        5.heightBox,
                        LinearProgressIndicator(
                          backgroundColor: greenApp,
                          value: 0,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        10.heightBox,
                        profileText.text.fontFamily(regular).color(Colors.grey).size(14).make(),
                      ],
                    ),
                  )
                ),
                10.heightBox,
                Container(
                  decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 17,
                      backgroundColor: Colors.green.shade100,
                      child: Icon(Icons.chat_outlined,color: greenApp,),
                    ),
                    title: "Chat with support".text.fontFamily(bold).color(Colors.black).size(14).make(),
                    // subtitle: "Date".text.fontFamily(regular).color(fontBlack).size(5).make(),
                    // trailing: "Amount".text.fontFamily(regular).color(fontBlack).size(13).make(),
                  ),
                ),
                10.heightBox,
                Container(
                  decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          radius: 17,
                          backgroundColor: Colors.green.shade100,
                          child: Icon(Icons.privacy_tip_outlined,color: greenApp,),
                        ),
                        title: "Privacy".text.fontFamily(bold).color(Colors.black).size(14).make(),
                        // subtitle: "Date".text.fontFamily(regular).color(fontBlack).size(5).make(),
                        // trailing: "Amount".text.fontFamily(regular).color(fontBlack).size(13).make(),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          radius: 17,
                          backgroundColor: Colors.green.shade100,
                          child: Icon(Icons.policy_outlined,color: greenApp,),
                        ),
                        title: "Terms & Conditions".text.fontFamily(bold).color(Colors.black).size(14).make(),
                        // subtitle: "Date".text.fontFamily(regular).color(fontBlack).size(5).make(),
                        // trailing: "Amount".text.fontFamily(regular).color(fontBlack).size(13).make(),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          radius: 17,
                          backgroundColor: Colors.green.shade100,
                          child: Icon(Icons.payment_outlined,color: greenApp,),
                        ),
                        title: "Schedule of Charging".text.fontFamily(bold).color(Colors.black).size(14).make(),
                        // subtitle: "Date".text.fontFamily(regular).color(fontBlack).size(5).make(),
                        // trailing: "Amount".text.fontFamily(regular).color(fontBlack).size(13).make(),
                      ),
                    ],
                  ),
                ),
                10.heightBox,
                Container(
                  decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 17,
                      backgroundColor: Colors.green.shade100,
                      child: Icon(Icons.devices,color: greenApp,),
                    ),
                    title: "Manage Device".text.fontFamily(bold).color(Colors.black).size(14).make(),
                    // subtitle: "Date".text.fontFamily(regular).color(fontBlack).size(5).make(),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,size: 18,),
                  ),
                ),
                10.heightBox,
                Container(
                  decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 17,
                      backgroundColor: Colors.green.shade100,
                      child: Icon(Icons.logout,color: greenApp,),
                    ),
                    title: "Log out".text.fontFamily(bold).color(Colors.black).size(14).make(),
                    // subtitle: "Date".text.fontFamily(regular).color(fontBlack).size(5).make(),
                    // trailing: "Amount".text.fontFamily(regular).color(fontBlack).size(13).make(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
