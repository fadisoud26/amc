import 'package:alwadi_medical_center/src/common_widgets/appBar/app_bar_back_with_logo/edit_appointment_back_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/appointment_calender/time_text_in_calender_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/button/elevated_button_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/shimmer/shimmer_screen/calender_shimmer.dart';
import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/sizebox.dart';
import 'package:alwadi_medical_center/src/screens/controller/home_screen_controller/edit_appointment_controller.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:alwadi_medical_center/src/utils/api/page_argument_name.dart';
import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditAppointmentScreen extends StatelessWidget {
  EditAppointmentScreen({super.key});
  static const String id = '/edit_appointment_screen';
  final EditAppointmentController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sizedBoxH20,
          EditApointmentBackRightWidget(
            topTitle:
                '${controller.arguments[PageArgName.sectionName]} ${AMCText.appointmentText.tr}',
            bottomTitle: controller.arguments[PageArgName.deviceName] == ' '
                ? controller.arguments[PageArgName.doctorName]
                : '${controller.arguments[PageArgName.doctorName]} / ${controller.arguments[PageArgName.deviceName]}',
          ),
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
                                locale: 'en',
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
              if (controller.isLoadingForEditInfo.value == false) {
                return ElevatedButtonWidget(
                  onTap: controller.isLoading.value
                      ? () {}
                      : () {
                          controller.editeAppointmentButton();
                        },
                  withHeight: true,
                  title: AMCText.editAppointment.tr,
                );
              }
              if (controller.isLoadingForEditInfo.value == true) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return  Center(child: Text(AMCText.doneText.tr));
            }),
          ),
        ],
      ),
    );
  }
}
