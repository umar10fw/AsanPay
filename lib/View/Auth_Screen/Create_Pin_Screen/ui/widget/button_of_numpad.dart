import 'package:flutter/material.dart';

class ButtonOfNumPad extends StatelessWidget {
  const ButtonOfNumPad({Key? key, required this.num, this.onPressed}) : super(key: key);

  final String num;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: FloatingActionButton.extended(
        heroTag: num,
        elevation: 0,
        backgroundColor: Colors.transparent,
        onPressed: onPressed,
        label: Text(
          num,
          style: const TextStyle(color: Color(0xffffffff),fontSize: 50),
        ),
      ),
    );
  }
}
