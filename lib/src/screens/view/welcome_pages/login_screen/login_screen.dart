import 'package:alwadi_medical_center/src/constents/edge_insets_constents.dart';
import 'package:alwadi_medical_center/src/screens/view/welcome_pages/login_screen/login_widgets/login_footer_widget.dart';
import 'package:alwadi_medical_center/src/screens/view/welcome_pages/login_screen/login_widgets/login_form_widget.dart';
import 'package:alwadi_medical_center/src/screens/view/welcome_pages/login_screen/login_widgets/login_header_widget.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  static const String id = '/log_in_screen';
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const LogInHeaderWidget(),
            Container(
              padding: signupAndLoginBodyPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  LogInFormWidget(),
                 const LogInFooterWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
