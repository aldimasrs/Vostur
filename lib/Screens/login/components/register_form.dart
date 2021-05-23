import 'package:flutter/material.dart';
import 'package:vostur/Screens/login/components/input_container.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../login_auth.dart';

class RegisterForm extends StatelessWidget {
  RegisterForm({
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
      opacity: isLogin ? 0.0 : 1.0,
      duration: animationDuration * 5,
      child: Visibility(
        visible: !isLogin,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: size.width,
            height: defaultLoginSize,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
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
                      await AuthServices.signUp(
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
                        "SIGN UP",
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
      ),
    );
  }
}
