import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_textformfiled.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
            'Sign Up',
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
            hint: 'Name Surname',
            top: 0,
            bottom: 10,
          ),
          const CustomTextFormFiled(
            textInputType: TextInputType.visiblePassword,
            hint: 'Password',
            top: 0,
            bottom: 10,
          ),
          const SizedBox(height: 50),
          CustomButton(text: 'Sign Up', onPressed: () {}),
        ],
      ),
    ));
  }
}
