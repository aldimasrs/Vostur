import 'package:flutter/material.dart';
import 'package:vostur/Screens/login/components/input_container.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../login_auth.dart';

class LoginForm extends StatelessWidget {
  LoginForm({
    Key key,
    @required this.isLogin,
    @required this.animationDuration,
    @required this.size,
    @required this.defaultLoginSize,
  }) : super(key: key);

  final bool isLogin;
  final Duration animationDuration;
  final Size size;
  final double defaultLoginSize;
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: isLogin ? 1.0 : 0.0,
      duration: animationDuration * 4,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: size.width,
          height: defaultLoginSize,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                SvgPicture.asset('assets/images/audiobook.svg',
                    height: 128, width: 128),
                SizedBox(height: 10),
                SvgPicture.asset('assets/images/VOSTUR.svg'),
                SizedBox(height: 40),
                InputContainer(
                  child: TextField(
                    controller: emailController,
                    cursorColor: kPrimaryColor,
                    decoration: InputDecoration(
                        icon: Icon(Icons.mail, color: Colors.white),
                        hintText: "EMAIL",
                        border: InputBorder.none),
                  ),
                ),
                InputContainer(
                  child: TextField(
                    controller: passController,
                    cursorColor: kPrimaryColor,
                    obscureText: true,
                    decoration: InputDecoration(
                        icon: Icon(Icons.lock, color: Colors.white),
                        hintText: "PASSWORD",
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () async {
                    await AuthServices.signIn(
                        emailController.text, passController.text);
                  },
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    alignment: Alignment.center,
                    child: Text(
                      "LOG IN",
                      style: TextStyle(
                          color: Color(0xff422660),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
