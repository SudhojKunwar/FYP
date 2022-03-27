import 'package:flutter/material.dart';
import 'package:local_house/homepage/home_page.dart';
import 'package:local_house/routes/routes.dart';
import 'package:local_house/signup/signup_screen.dart';
import 'package:local_house/widgets/my_button_widget.dart';
import 'package:local_house/widgets/my_textfromfield_widgets.dart';
import 'package:local_house/appColors/app_colors.dart';
import 'package:local_house/styles/login_screen_style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget buildTopPart(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "images/logo.jpg",
          height: 400,
        ),
        Column(
          children: [
            MyTextFromField(
              hintText: "E-mail",
              obscureText: false,
            ),
            MyTextFromField(
              hintText: "Password",
              obscureText: true,
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: MyButtonWidget(
                  text: "Sign In",
                  color: AppColors.baseBlackColor,
                  onPress: () {
                    PageRouting.goToNextPage(
                      context: context,
                      navigateTo: const HomePage(),
                    );
                  },
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: MyButtonWidget(
                  text: "Sign Up",
                  color: AppColors.baseDarkPinkColor,
                  onPress: () {
                    PageRouting.goToNextPage(
                      context: context,
                      navigateTo: const SignupScreen(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "Forgot Password?",
          style: LoginScreenStyles.forgotPasswordStyles,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildTopPart(context),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
