import 'package:alwadi_medical_center/src/common_widgets/appBar/app_bar_back_with_logo/drawer_back_widget.dart';
import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/edge_insets_constents.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/constents/sizebox.dart';
import 'package:alwadi_medical_center/src/screens/controller/drawer_screen_controller/contact_us_controller.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carbon_icons/carbon_icons.dart';

class ContactUsScreen extends StatelessWidget {
  static const String id = '/contact_us_screen';
  ContactUsScreen({super.key});
  final ContactUsScreenController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding:
                EdgeInsets.only(top: Get.height - 500, left: Get.width - 200),
            child: const Image(image: AssetImage(path0Img)),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: Get.height - 190, right: Get.width - 100),
            child: const Image(image: AssetImage(path3Img)),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sizedBoxH30,
                DrawerBackWidget(title: AMCText.contactUsText.tr),
                Container(
                    padding: signupAndLoginBodyPadding,
                    child: Column(
                      children: [
                        const ListTile(
                            leading: Icon(
                              Icons.phone_outlined,
                              color: thePrimaryColor,
                              size: 30,
                            ),
                            title: Text('0933709280',
                                style: TextStyle(fontSize: 18))),
                        const ListTile(
                            leading: Icon(
                              CarbonIcons.phone_ip,
                              color: thePrimaryColor,
                              size: 30,
                            ),
                            title: Text('031-7437920',
                                style: TextStyle(fontSize: 18))),
                        const ListTile(
                            leading: FaIcon(
                              FontAwesomeIcons.squareFacebook,
                              color: Colors.blue,
                              size: 30,
                            ),
                            title: Text('alwadi Medical Center ',
                                style: TextStyle(fontSize: 18))),
                        const ListTile(
                            leading: Icon(
                              CarbonIcons.logo_instagram,
                              color: thePrimaryColor,
                              size: 30,
                            ),
                            title: Text('alwadi Medical Center ',
                                style: TextStyle(fontSize: 18))),
                        ListTile(
                            leading: const Icon(
                              Icons.location_on_outlined,
                              color: thePrimaryColor,
                              size: 30,
                            ),
                            title: Text(AMCText.amcLocation.tr,
                                style: const TextStyle(fontSize: 18))),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
