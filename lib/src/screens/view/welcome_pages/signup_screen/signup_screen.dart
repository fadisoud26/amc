import 'package:alwadi_medical_center/src/constents/edge_insets_constents.dart';
import 'package:alwadi_medical_center/src/screens/view/welcome_pages/signup_screen/signup_widgets/signup_footer_widget.dart';
import 'package:alwadi_medical_center/src/screens/view/welcome_pages/signup_screen/signup_widgets/signup_form/signup_form_widget.dart';
import 'package:alwadi_medical_center/src/screens/view/welcome_pages/signup_screen/signup_widgets/signup_header_widget.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  static const String id = '/sign_in_screen';
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SignUpHeaderWidget(),
            Container(
              padding: signupAndLoginBodyPadding,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SignUpFormWidget(),
                  SignUpFooterWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
