import 'package:flutter/material.dart';

class PinSphere extends StatelessWidget {
  final bool input;

  const PinSphere({Key? key, required this.input}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        width: 15,
        height: 15,
        decoration: BoxDecoration(
          color: input ? const Color(0xff1a1e29) : null,
          border: Border.all(
              color: const Color(0xffffffff),
              width: 1
          ),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}