import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_textformfiled.dart';
import '../controller/forgot_password_controller.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder(
          init: ForgotPassordController(),
          builder: (controller) {
            return Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Forgot Password?',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  CustomTextFormFiled(
                    controller: controller.forgot,
                    textInputType: TextInputType.emailAddress,
                    hint: 'E-mails',
                  ),
                  CustomButton(
                      text: 'Send',
                      onPressed: () {
                        if (controller.forgot.text == '') {
                          Get.snackbar('Wrong', 'Please write your e-mail');
                        } else {
                          Get.back();
                        }
                      }),
                ],
              ),
            );
          }),
    );
  }
}
