import 'package:client/consts/consts.dart';
import 'package:velocity_x/velocity_x.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  height: 250,
                  child: Column(
                    children: [
                      Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    elevation: 8,
                                    color: greenApp,
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          "Current Balance".text.fontFamily(regular).color(white).size(15).make(),
                                          5.heightBox,
                                          "RS. 00".text.fontFamily(bold).color(white).size(25).make(),
                                          5.heightBox,
                                          Spacer(),
                                          Column(
                                            children: [
                                              Align(
                                                  alignment: Alignment.bottomRight,
                                                  child: Icon(Icons.arrow_forward_rounded,color: white,))
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              Column(
                                children: [
                                  Expanded(
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      elevation: 8,
                                      color: darkBlue,
                                      child: SizedBox(
                                        width: 150,
                                        child: Padding(
                                          padding: const EdgeInsets.all(12),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              "Load\nMoney".text.fontFamily(bold).color(white).size(15).make(),
                                             5.heightBox,
                                              Spacer(),
                                              Column(
                                                children: [
                                                  Align(
                                                      alignment: Alignment.bottomRight,
                                                      child: Icon(Icons.arrow_forward_rounded,color: white,))
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      elevation: 8,
                                      color: red,
                                      child: SizedBox(
                                        width: 150,
                                        child: Padding(
                                          padding: const EdgeInsets.all(12),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              "Send &\nRequest".text.fontFamily(bold).color(white).size(15).make(),
                                              5.heightBox,
                                              Spacer(),
                                              Column(
                                                children: [
                                                  Align(
                                                      alignment: Alignment.bottomRight,
                                                      child: Icon(Icons.arrow_forward_rounded,color: white,))
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                               ),
                              ],
                          ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: white,
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        radius: 17,
                        backgroundColor: Colors.green.shade100,
                        child: Icon(Icons.arrow_downward,color: greenApp,),
                      ),
                      title: "Sender Name".text.fontFamily(bold).color(Colors.black).size(16).make(),
                      subtitle: "Date".text.fontFamily(regular).color(fontBlack).size(5).make(),
                      trailing: "Amount".text.fontFamily(regular).color(fontBlack).size(13).make(),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 17,
                        backgroundColor: darkVeryBlue,
                        child: Icon(Icons.arrow_forward_rounded,color: white,),
                      ),
                      title: "Receiver Name".text.fontFamily(bold).color(Colors.black).size(16).make(),
                      subtitle: "Date".text.fontFamily(regular).color(fontBlack).size(5).make(),
                      trailing: "Amount".text.fontFamily(regular).color(fontBlack).size(13).make(),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 17,
                        backgroundColor: Colors.green.shade100,
                        child: Icon(Icons.arrow_downward,color: greenApp,),
                      ),
                      title: "Sender Name".text.fontFamily(bold).color(Colors.black).size(16).make(),
                      subtitle: "Date".text.fontFamily(regular).color(fontBlack).size(5).make(),
                      trailing: "Amount".text.fontFamily(regular).color(fontBlack).size(13).make(),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 17,
                        backgroundColor: Colors.green.shade100,
                        child: Icon(Icons.arrow_downward,color: greenApp,),
                      ),
                      title: "Sender Name".text.fontFamily(bold).color(Colors.black).size(16).make(),
                      subtitle: "Date".text.fontFamily(regular).color(fontBlack).size(5).make(),
                      trailing: "Amount".text.fontFamily(regular).color(fontBlack).size(13).make(),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 17,
                        backgroundColor: Colors.green.shade100,
                        child: Icon(Icons.arrow_downward,color: greenApp,),
                      ),
                      title: "Sender Name".text.fontFamily(bold).color(Colors.black).size(16).make(),
                      subtitle: "Date".text.fontFamily(regular).color(fontBlack).size(5).make(),
                      trailing: "Amount".text.fontFamily(regular).color(fontBlack).size(13).make(),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 17,
                        backgroundColor: Colors.green.shade100,
                        child: Icon(Icons.arrow_downward,color: greenApp,),
                      ),
                      title: "Sender Name".text.fontFamily(bold).color(Colors.black).size(16).make(),
                      subtitle: "Date".text.fontFamily(regular).color(fontBlack).size(5).make(),
                      trailing: "Amount".text.fontFamily(regular).color(fontBlack).size(13).make(),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 17,
                        backgroundColor: Colors.green.shade100,
                        child: Icon(Icons.arrow_downward,color: greenApp,),
                      ),
                      title: "Sender Name".text.fontFamily(bold).color(Colors.black).size(16).make(),
                      subtitle: "Date".text.fontFamily(regular).color(fontBlack).size(5).make(),
                      trailing: "Amount".text.fontFamily(regular).color(fontBlack).size(13).make(),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
