import 'package:flutter/material.dart';
import 'package:vostur/components/input_container.dart';
import 'package:vostur/constants.dart';

class RoundedPasswordInput extends StatelessWidget {
  const RoundedPasswordInput({Key key, @required this.hint}) : super(key: key);

  final String hint;

  @override
  Widget build(BuildContext context) {
    return InputContainer(
        child: TextField(
      cursorColor: kPrimaryColor,
      obscureText: true,
      decoration: InputDecoration(
          icon: Icon(Icons.lock, color: Colors.white),
          hintText: hint,
          border: InputBorder.none),
    ));
  }
}
