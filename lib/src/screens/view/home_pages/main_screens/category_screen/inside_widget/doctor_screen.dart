import 'package:alwadi_medical_center/src/common_widgets/appBar/doctor_device_nurse_app_bar/doctor_device_nurse_app_bar.dart';
import 'package:alwadi_medical_center/src/common_widgets/appointment_calender/time_text_in_calender_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/button/elevated_button_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/shimmer/shimmer_screen/calender_shimmer.dart';
import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/sizebox.dart';
import 'package:alwadi_medical_center/src/screens/controller/home_screen_controller/category_screens_controller/doctor_screen_controller.dart';
import 'package:alwadi_medical_center/src/screens/view/profile_pages/doctor_device_nurs_profile/doctor_device_nurs_profile_screen.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:alwadi_medical_center/src/utils/api/page_argument_name.dart';
import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorScreen extends StatelessWidget {
  static const String id = '/doctor_screen';
  DoctorScreen({super.key});
  final DoctorScreenController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DoctorDeviceNurseAppBar(
            imagePath: controller.arguments[PageArgName.image],
            name: controller.arguments[PageArgName.name],
            specialization: controller.arguments[PageArgName.specialization],
            information: controller.arguments[PageArgName.description],
            onTap: () => Get.back(),
            onTapSeeMore: () => Get.toNamed(
              DoctorDeviceNursProfileScreen.id,
              arguments: {
                PageArgName.doctorName: controller.arguments[PageArgName.name],
                PageArgName.deviceName: 'null',
                PageArgName.nursName: 'null',
              },
            ),
          ),
          sizedBoxH20,
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Obx(
                () => controller.isLoading.value
                    ? const CalenderShimmerWidget()
                    : SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Obx(
                              () => CalendarTimeline(
                                //showYears: true,
                                initialDate: controller.selectedDate.value,
                                firstDate: controller.startDateTime,
                                lastDate: controller.startDateTime.add(Duration(
                                    days: controller
                                        .calenderModel!.schedule.length)),
                                onDateSelected: (date) => {
                                  controller.selectedDate.value = date,
                                  controller.getTimeList(date)
                                },
                                leftMargin: 2,
                                monthColor: Get.isDarkMode ? theWhiteColor: theDarkColor,
                                dayColor: Get.isDarkMode ? theWhiteColor:  theDarkColor,
                                dayNameColor: theAccentColor,
                                activeDayColor: Colors.white,
                                activeBackgroundDayColor: thePrimaryColor,
                                dotsColor: theAccentColor,
                                selectableDayPredicate: (date) =>
                                    controller.activateThisDateOrNOt(date),
                                locale:'en',
                              ),
                            ),
                            const TimeTextInCalenderWidget(),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Obx(
                                () => GridView.builder(
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  physics: const BouncingScrollPhysics(),
                                  controller: controller.scrollController,
                                  itemCount: controller.timesListData.length,
                                  itemBuilder: (context, index) {
                                    return controller.timesListData[index];
                                  },
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    childAspectRatio: 2.3,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: Obx(() {
              if (controller.isReserveDone.value == true) {
                return ElevatedButtonWidget(
                    onTap: controller.onTapReservAppointment,
                    withHeight: true,
                    title: AMCText.makeAnAppointment.tr);
              }
              if (controller.isReserveDone.value == false) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return  Center(child: Text(AMCText.doneText.tr));
            }),
          )
        ],
      ),
    );
  }
}
