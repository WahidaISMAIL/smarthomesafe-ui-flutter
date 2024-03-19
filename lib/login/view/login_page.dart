import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../forgot_password/view/forgot_password.dart';
import '../../homepage/view/homepage.dart';
import '../../sign_up/view/sign_up.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textformfiled.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            'Login',
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold),
          )),
          const SizedBox(height: 20),
          const CustomTextFormFiled(
              textInputType: TextInputType.emailAddress,
              hint: 'E-mail',
              bottom: 10),
          const CustomTextFormFiled(
            textInputType: TextInputType.visiblePassword,
            hint: 'Password',
            top: 0,
            bottom: 10,
          ),
          Align(
            alignment: Alignment.topRight,
            child: InkWell(
                onTap: () {
                  Get.to(() => const ForgotPassword());
                },
                child: const Text('Forget Password')),
          ),
          const SizedBox(height: 50),
          CustomButton(
              text: 'Login',
              onPressed: () {
                Get.to(() => const HomePage());
              }),
          const SizedBox(height: 15),
          TextButton(
              onPressed: () {
                Get.to(() => const SignUp());
              },
              child: const Text('Sign Up')),
        ],
      ),
    ));
  }
}
