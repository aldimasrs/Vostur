import 'package:flutter/material.dart';
import 'package:vostur/Screens/login/login_auth.dart';
import 'package:vostur/constants.dart';

class HomeProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xff061E40),
            Color(0xff422660),
            Color(0xffC037A2),
          ],
        )),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.93,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Positioned(
                bottom: 20,
                right: 20,
                left: 20,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.83,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xfffff8ee),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      left: 20,
                      right: 20,
                    ),
                    child: Column(
                      children: [
                        Container(
                            child: IconButton(
                              icon: Icon(
                                Icons.settings,
                                color: kTextColor,
                                size: 36,
                              ),
                              onPressed: () async {
                                await AuthServices.signOut();
                              },
                            ),
                            margin: EdgeInsets.only(
                              bottom: MediaQuery.of(context).size.height * 0.26,
                              left: MediaQuery.of(context).size.width * 0.68,
                            )),
                        Text(
                          "ANAS NABHANNINGRUM",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: kMiddleColor,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "anas.nabha123@gmail.com",
                          style: TextStyle(
                            fontSize: 16,
                            color: kMiddleColor,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(
                            top: 30,
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "TOTAL READS",
                                    style: kSubtitleStyle,
                                  ),
                                  Text(
                                    "FAVOURITES",
                                    style: kSubtitleStyle,
                                  ),
                                  Text(
                                    "REVIEWS",
                                    style: kSubtitleStyle,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "127",
                                    style: kSubtitleStyle,
                                  ),
                                  Text(
                                    "83",
                                    style: kSubtitleStyle,
                                  ),
                                  Text(
                                    "47",
                                    style: kSubtitleStyle,
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 120),
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.2,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    "assets/images/image.png",
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ]);
  }
}

final kSubtitleStyle = TextStyle(
  fontSize: 16,
  color: kMiddleColor,
);
