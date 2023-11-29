

import 'package:client/View/Auth_Screen/Create_Pin_Screen/buiznes/authentication_pin_bloc.dart';
import 'package:client/View/Auth_Screen/Create_Pin_Screen/data/pin_repository.dart';
import 'package:client/View/Auth_Screen/Create_Pin_Screen/ui/widget/button_of_numpad.dart';
import 'package:client/View/Home/homeMain.dart';
import 'package:client/consts/consts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class AuthenticationPIN extends StatelessWidget {
  static const String setupPIN = "Setup PIN";
  static const String useSixDigitsPIN = "Use 6-digits PIN";
  static const String authenticationSuccess = "Authentication success";
  static const String authenticationFailed = "Authentication failed";

  //static const String ok = "OK";

  const AuthenticationPIN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          lazy: false,
          create: (_) =>
              AuthenticationPinBloc(pinRepository: HivePINRepository()),
          child: BlocListener<AuthenticationPinBloc, AuthenticationPinState>(
            listener: (context, state) {
              if (state.pinStatus == AuthenticationPINStatus.equals) {
                showDialog(
                  context: context,
                  builder: (context) => const AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    title: Text(authenticationSuccess),
                    actionsAlignment: MainAxisAlignment.center,
                  ),
                );
                Future.delayed(
                  const Duration(seconds: 2),
                  () => Get.to(HomePage()),
                );
              } else if (state.pinStatus == AuthenticationPINStatus.unequals) {
                showDialog(
                    context: context,
                    builder: (context) => const AlertDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          title: Text(authenticationFailed),
                          actionsAlignment: MainAxisAlignment.center,
                        ));
              }
            },
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                // Expanded(flex: 2, child: _MainPart()),
                Expanded(flex: 3, child: _NumPad()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const AuthenticationPIN());
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
                        onPressed: () =>
                            BlocProvider.of<AuthenticationPinBloc>(context).add(
                                const AuthenticationPinAddEvent(pinNum: 1)))),
                const SizedBox(width: 64),
                Expanded(
                    child: ButtonOfNumPad(
                        num: "2",
                        onPressed: () =>
                            BlocProvider.of<AuthenticationPinBloc>(context).add(
                                const AuthenticationPinAddEvent(pinNum: 2)))),
                const SizedBox(width: 64),
                Expanded(
                    child: ButtonOfNumPad(
                        num: "3",
                        onPressed: () =>
                            BlocProvider.of<AuthenticationPinBloc>(context).add(
                                const AuthenticationPinAddEvent(pinNum: 3)))),
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
                        onPressed: () =>
                            BlocProvider.of<AuthenticationPinBloc>(context).add(
                                const AuthenticationPinAddEvent(pinNum: 4)))),
                const SizedBox(width: 64),
                Expanded(
                    child: ButtonOfNumPad(
                        num: "5",
                        onPressed: () =>
                            BlocProvider.of<AuthenticationPinBloc>(context).add(
                                const AuthenticationPinAddEvent(pinNum: 5)))),
                const SizedBox(width: 64),
                Expanded(
                    child: ButtonOfNumPad(
                        num: "6",
                        onPressed: () =>
                            BlocProvider.of<AuthenticationPinBloc>(context).add(
                                const AuthenticationPinAddEvent(pinNum: 6)))),
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
                        onPressed: () =>
                            BlocProvider.of<AuthenticationPinBloc>(context).add(
                                const AuthenticationPinAddEvent(pinNum: 7)))),
                const SizedBox(width: 64),
                Expanded(
                    child: ButtonOfNumPad(
                        num: "8",
                        onPressed: () =>
                            BlocProvider.of<AuthenticationPinBloc>(context).add(
                                const AuthenticationPinAddEvent(pinNum: 8)))),
                const SizedBox(width: 64),
                Expanded(
                    child: ButtonOfNumPad(
                        num: "9",
                        onPressed: () =>
                            BlocProvider.of<AuthenticationPinBloc>(context).add(
                                const AuthenticationPinAddEvent(pinNum: 9)))),
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
                        onPressed: () =>
                            BlocProvider.of<AuthenticationPinBloc>(context).add(
                                const AuthenticationPinAddEvent(pinNum: 0)))),
                const SizedBox(width: 64),
                Expanded(
                    child: IconButton(
                       icon: const Icon(Icons.backspace_rounded,color: whiteColor,),
                       onPressed: () =>
                      BlocProvider.of<AuthenticationPinBloc>(context)
                          .add(const AuthenticationPinEraseEvent()),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

