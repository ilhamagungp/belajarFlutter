import 'package:flutter/material.dart';
import 'package:belajar_online_flutter/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

class SignInScreen extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function onBackButtonPressed;
  final Widget child;
  final Color backColor;

  SignInScreen({
    this.title = 'Title',
    this.subtitle = 'subtitle',
    this.onBackButtonPressed,
    this.child,
    this.backColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SafeArea(
            child: Container(
              color: backColor ?? "FAFAFC".toColor(),
            ),
          ),
          SafeArea(
              child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    bottom: 24,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  width: double.infinity,
                  height: 100,
                  color: Colors.white,
                  child: Row(
                    children: [
                      onBackButtonPressed != null 
                      ? Container(
                        width: 24,
                        height: 24,
                        margin: EdgeInsets.only(right: 26),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/btn_back.png'),
                          ),
                        ),
                      ) 
                    : SizedBox(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          style: GoogleFonts.poppins(
                            color: "000000".toColor(),
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          subtitle,
                          style: GoogleFonts.poppins(
                            color: "8D92A3".toColor(),
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    ],
                  ),
                ),
                Container(
                  height: 24,
                  width: double.infinity,
                  color: "FAFAFC".toColor(),
                ),
                child ?? SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
