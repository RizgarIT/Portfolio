import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import 'area_info_text.dart';
import 'coding.dart';
import 'ContactMe.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "Residence",
                      text: "Iraq",
                    ),
                    AreaInfoText(
                      title: "City",
                      text: "Zheen Quarter , Erbil",
                    ),
                    AreaInfoText(
                      title: "Age",
                      text: "22",
                    ),
                    Skills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    ContactMe(),


                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF1E1E28),
                      child: Row(
                        children: [
                          Spacer(),
                          RaisedButton(
                            onPressed: () {
                              openFacebook();
                            },
                            child: Image.asset("images/facebook-logo.png")
                            , color: Color(0xFF1E1E28),
                          ),
                          RaisedButton(
                            onPressed: () {openInstagram();},
                            child: Image.asset("images/instagram.png")
                            , color: Color(0xFF1E1E28),
                          ),
                          RaisedButton(
                            onPressed: () {openTwitter();},
                            child: Image.asset("images/twitter.png")
                            , color: Color(0xFF1E1E28),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                    SizedBox(height: defaultPadding),
                    Divider(),
                    SizedBox(height: defaultPadding),
                    SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () {openMyCv();},
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV",
                              style: TextStyle(
                                color: Theme
                                    .of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                              ),
                            ),
                            SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset("assets/icons/download.svg")
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: defaultPadding),
                  ],

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

   openFacebook() {
    String url = "https://www.facebook.com/rizgar.hassan1999/";

    launch(url);
  }
  openTwitter() {
    String url = "https://twitter.com/_Rizgar_";

    launch(url);
  }
  openInstagram() {
    String url = "https://www.instagram.com/rizgar__hassan/";

    launch(url);
  }
  openMyCv() {
    String url = "https://drive.google.com/file/d/1hCdXd2VPBlimqwQ0SOA8c4YUg-obblgE/view?usp=sharing";

    launch(url);
  }
}