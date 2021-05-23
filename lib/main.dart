import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vostur/Screens/login/login_auth.dart';
import 'package:vostur/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vostur/wrapper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthServices.firebaseUserStream,
      child: MaterialApp(
        title: 'Vostur',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: kPrimaryColor,
            textTheme:
                GoogleFonts.robotoTextTheme(Theme.of(context).textTheme)),
        home: Wrapper(),
      ),
    );
  }
}
