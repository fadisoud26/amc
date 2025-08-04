import 'package:alwadi_medical_center/src/constents/edge_insets_constents.dart';
import 'package:alwadi_medical_center/src/screens/view/welcome_pages/confirm_screen/confirme_widget/confirme_footer_widget.dart';
import 'package:alwadi_medical_center/src/screens/view/welcome_pages/confirm_screen/confirme_widget/confirme_form_widget.dart';
import 'package:alwadi_medical_center/src/screens/view/welcome_pages/confirm_screen/confirme_widget/confirme_header_widget.dart';
import 'package:flutter/material.dart';

class ConfirmeScreen extends StatelessWidget {
  const ConfirmeScreen({Key? key}) : super(key: key);
  static const String id = '/confirme_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: signupAndLoginBodyPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ConfirmeHeaderWidget(),
              ConfirmeFormWidget(),
              const ConfirmeFooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
