
import 'package:client/View/Auth_Screen/Create_Pin_Screen/data/pin_repository.dart';
import 'package:client/View/Auth_Screen/Create_Pin_Screen/ui/widget/button_of_numpad.dart';
import 'package:client/View/Auth_Screen/Create_Pin_Screen/ui/widget/pin_sphere.dart';
import 'package:client/View/Auth_Screen/User_Info_Screen.dart';
import 'package:client/consts/colors.dart';
import 'package:client/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import '../buiznes/create_pin_bloc.dart';

class CreatePIN extends StatelessWidget {
  static const String setupPIN = "Setup PIN";
  static const String useSixDigitsPIN = "Use 6-digits PIN";
  static const String pinCreated = "Your PIN code is successfully created";
  static const String pinNonCreated = "Pin codes do not match";
  static const String ok = "OK";

  const CreatePIN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenApp,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: whiteColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: BlocProvider(
          lazy: false,
          create: (_) => CreatePINBloc(pinRepository: HivePINRepository()),
          child: BlocListener<CreatePINBloc, CreatePINState>(
            listener: (context, state) {
              if (state.pinStatus == PINStatus.equals) {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          title: const Text(pinCreated),
                          actionsAlignment: MainAxisAlignment.center,
                          actions: [
                            TextButton(
                              onPressed: () => Get.to(UserInfoScreen()),
                              child: const Text(ok),
                            )
                          ],
                        ));
              } else if (state.pinStatus == PINStatus.unequals) {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          title: const Text(pinNonCreated),
                          actionsAlignment: MainAxisAlignment.center,
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  BlocProvider.of<CreatePINBloc>(context)
                                      .add(const CreateNullPINEvent()),
                              child: const Text(ok),
                            )
                          ],
                        ));
              }
            },
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(flex: 2, child: _MainPart()),
                Expanded(flex: 3, child: _NumPad()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const CreatePIN());
  }
}

class _NumPad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(64, 0, 64, 64),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Row(
              children: [
                Expanded(
                    child: ButtonOfNumPad(
                        num: "1",
                        onPressed: () => BlocProvider.of<CreatePINBloc>(context)
                            .add(const CreatePINAddEvent(pinNum: 1)))),
                const SizedBox(width: 64),
                Expanded(
                    child: ButtonOfNumPad(
                        num: "2",
                        onPressed: () => BlocProvider.of<CreatePINBloc>(context)
                            .add(const CreatePINAddEvent(pinNum: 2)))),
                const SizedBox(width: 64),
                Expanded(
                    child: ButtonOfNumPad(
                        num: "3",
                        onPressed: () => BlocProvider.of<CreatePINBloc>(context)
                            .add(const CreatePINAddEvent(pinNum: 3)))),
              ],
            ),
          ),
          const SizedBox(height: 32),
          Flexible(
            child: Row(
              children: [
                Expanded(
                    child: ButtonOfNumPad(
                        num: "4",
                        onPressed: () => BlocProvider.of<CreatePINBloc>(context)
                            .add(const CreatePINAddEvent(pinNum: 4)))),
                const SizedBox(width: 64),
                Expanded(
                    child: ButtonOfNumPad(
                        num: "5",
                        onPressed: () => BlocProvider.of<CreatePINBloc>(context)
                            .add(const CreatePINAddEvent(pinNum: 5)))),
                const SizedBox(width: 64),
                Expanded(
                    child: ButtonOfNumPad(
                        num: "6",
                        onPressed: () => BlocProvider.of<CreatePINBloc>(context)
                            .add(const CreatePINAddEvent(pinNum: 6)))),
              ],
            ),
          ),
          const SizedBox(height: 32),
          Flexible(
            child: Row(
              children: [
                Expanded(
                    child: ButtonOfNumPad(
                        num: "7",
                        onPressed: () => BlocProvider.of<CreatePINBloc>(context)
                            .add(const CreatePINAddEvent(pinNum: 7)))),
                const SizedBox(width: 64),
                Expanded(
                    child: ButtonOfNumPad(
                        num: "8",
                        onPressed: () => BlocProvider.of<CreatePINBloc>(context)
                            .add(const CreatePINAddEvent(pinNum: 8)))),
                const SizedBox(width: 64),
                Expanded(
                    child: ButtonOfNumPad(
                        num: "9",
                        onPressed: () => BlocProvider.of<CreatePINBloc>(context)
                            .add(const CreatePINAddEvent(pinNum: 9)))),
              ],
            ),
          ),
          const SizedBox(height: 32),
          Flexible(
            child: Row(
              children: [
                const Expanded(
                  child: SizedBox(),
                ),
                const SizedBox(width: 64),
                Expanded(
                    child: ButtonOfNumPad(
                        num: "0",
                        onPressed: () => BlocProvider.of<CreatePINBloc>(context)
                            .add(const CreatePINAddEvent(pinNum: 0)))),
                const SizedBox(width: 64),
                Expanded(
                    child: IconButton(
                  icon: const Icon(Icons.backspace),
                  onPressed: () => BlocProvider.of<CreatePINBloc>(context)
                      .add(const CreatePINEraseEvent()),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _MainPart extends StatelessWidget {
  static const String createPIN = "Great! Let's set your 5 digit login PIN";
  static const String reEnterYourPIN = "Re-enter your PIN";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(64, 0, 64, 0),
      child: BlocBuilder<CreatePINBloc, CreatePINState>(
        buildWhen: (previous, current) =>
            previous.firstPIN != current.firstPIN ||
            previous.secondPIN != current.secondPIN,
        builder: (context, state) {
          return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Flexible(
              flex: 2,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                    state.pinStatus == PINStatus.enterFirst
                        ? createPIN
                        : reEnterYourPIN,
                    style:
                        const TextStyle(color: Color(0xffffffff), fontSize: 22,fontFamily: semiBold,)),
              ),
            ),
            Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    4,
                    (index) =>
                        PinSphere(input: index < state.getCountsOfPIN())),
              ),
            ),
          ]);
        },
      ),
    );
  }
}
