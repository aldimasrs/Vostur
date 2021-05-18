import 'package:flutter/material.dart';
import 'package:vostur/components/input_container.dart';
import 'package:vostur/constants.dart';

class RoundedInput extends StatelessWidget {
  const RoundedInput({Key key, @required this.icon, @required this.hint})
      : super(key: key);

  final IconData icon;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return InputContainer(
        child: TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          icon: Icon(icon, color: Colors.white),
          hintText: hint,
          border: InputBorder.none),
    ));
  }
}
