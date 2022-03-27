import 'package:flutter/material.dart';
import 'package:local_house/appColors/app_colors.dart';
import 'package:local_house/styles/signup_screen_style.dart';
import 'package:local_house/widgets/my_button_widget.dart';
import 'package:local_house/widgets/my_textfromfield_widgets.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  Widget buildTopPart() {
    return Column(
      children: [
        Image.asset(
          "images/logo.jpg",
          height: 300,
        ),
        MyTextFromField(
          hintText: "Full name",
          obscureText: false,
        ),
        MyTextFromField(
          hintText: "Email",
          obscureText: false,
        ),
        MyTextFromField(
          hintText: "Password",
          obscureText: true,
        ),
        MyTextFromField(
          hintText: "Conform Password",
          obscureText: true,
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: MyButtonWidget(
            onPress: () {},
            color: AppColors.baseDarkPinkColor,
            text: "Create an account",
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        RichText(
          text: const TextSpan(
            text: "By Signing up you agress to our\n",
            style: SignupScreenStyles.signInAgressStyle,
            children: <TextSpan>[
              TextSpan(
                text: "Terms",
                style: SignupScreenStyles.termsTextStyle,
              ),
              TextSpan(
                text: " and ",
                style: SignupScreenStyles.andTextStyle,
              ),
              TextSpan(
                text: "Conditions of Use",
                style: SignupScreenStyles.conditionsOfUseStyle,
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            buildTopPart(),
          ],
        ),
      ),
    );
  }
}
