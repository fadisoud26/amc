import 'dart:convert';
import 'package:alwadi_medical_center/src/common_widgets/appointment_calender/time_widget/calender_time_free_selected_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/appointment_calender/time_widget/calender_time_taken_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/get_widget/snackbar.dart';
import 'package:alwadi_medical_center/src/constents/enum.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/screens/model/categorys_model/calender_model.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/home_screen.dart';
import 'package:alwadi_medical_center/src/serveces/get_storage.dart';
import 'package:alwadi_medical_center/src/utils/api/page_argument_name.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:alwadi_medical_center/src/utils/api/api_endpoints.dart';
import 'package:alwadi_medical_center/src/utils/api/api_parameter_name.dart';
import 'package:get/get.dart';

class NursScreenController extends GetxController {
  final ScrollController scrollController = ScrollController();
  RxBool isLoading = true.obs;
  RxBool isReserveDone = true.obs;
  var arguments = Get.arguments;

  CalenderModel? calenderModel;
  late RxList timesListData = [].obs;
  RxList availableDays = [].obs;

  late DateTime startDateTime = DateTime.parse('2023-06-01');
  late Rx<DateTime> selectedDate = DateTime.parse('2023-06-05').obs;
  late Rx<TimeState> state = TimeState.free.obs;

  RxString bookingTime = ' '.obs;
  RxString bookingDay = ' '.obs;
  @override
  void onInit() {
    getNursCalenderListAPI();
    super.onInit();
  }

  void onTapReservAppointment() {
    isReserveDone.value = false;
    if (bookingDay.value != ' ' && bookingTime.value != ' ') {
      reserveNursAppointmentAPI();
    }
  }

  void getNursCalenderListAPI() {
    var bodyValue = <String, String>{
      ApiParName.nursCalenderParAPI.deviceName:
          arguments[PageArgName.deviceName],
      ApiParName.nursCalenderParAPI.nursName: arguments[PageArgName.name],
    };

    http
        .post(APIURI.nursScheduletURI,
            body: jsonEncode(bodyValue), headers: headerValue())
        .then((value) => {
              if (jsonDecode(value.body)[ApiParName.result] == 'ok')
                {
                  calenderModel =
                      CalenderModel.fromJson(jsonDecode(value.body)),
                  startDateTime =
                      DateTime.parse(calenderModel!.schedule[0].day),
                  selectedDate.value =
                      DateTime.parse(calenderModel!.schedule[0].day),
                  setTimeList(calenderModel!.schedule[0].timeList!),
                  chooseTheAvailableDays(),
                  isLoading.value = false,
                }
              else if (jsonDecode(value.body)[ApiParName.result] == 'invalid')
                snackBar(
                title: jsonDecode(value.body)[ApiParName.message],
                image: notDoneImg1)
              else
                snackBarForError(),
            });
  }

  void reserveNursAppointmentAPI() {
    var bodyValue = <String, String>{
      ApiParName.reserveNursAppointmentParAPI.deviceName:
          arguments[PageArgName.deviceName],
      ApiParName.reserveNursAppointmentParAPI.nursName:
          arguments[PageArgName.name],
      ApiParName.reserveNursAppointmentParAPI.appointmentDate: bookingDay.value,
      ApiParName.reserveNursAppointmentParAPI.appointmentTime:
          bookingTime.value,
    };
    http
        .post(APIURI.reserveNursAppointmentURI,
            body: jsonEncode(bodyValue), headers: headerValue())
        .then((value) => {
              if (jsonDecode(value.body)[ApiParName.result] == 'ok')
                {
                  //isLoading.value = true,
                  //timesListData.value = [],
                  //availableDays.value = [],
                  //getNursCalenderListAPI(),
                  isReserveDone.value = true,
                  Get.offAllNamed(HomeScreen.id,
                      arguments: {PageArgName.pageId: 4})
                }
              else if (jsonDecode(value.body)[ApiParName.result] == 'invalid')
                {
                  isReserveDone.value = true,
                  snackBar(
                title: jsonDecode(value.body)[ApiParName.message],
                image: notDoneImg1)
                }
              else
                {
                  isReserveDone.value = true,
                  snackBarForError(),
                }
            });
  }

  void setTimeList(List<TimeList> list) {
    for (var element in list) {
      element.free
          ? timesListData.add(
              Obx(
                () => CalenderTimeFreeSelectedWidget(
                    time: element.time,
                    timeState: bookingTime.value == element.time &&
                            bookingDay.value ==
                                selectedDate.value.toString().split(' ')[0]
                        ? state.value
                        : TimeState.free,
                    onTap: () {
                      state.value = TimeState.selected;
                      bookingTime.value = element.time;
                      bookingDay.value =
                          selectedDate.value.toString().split(' ')[0];
                    }),
              ),
            )
          : timesListData.add(
              CalenderTimeTakenWidget(
                time: element.time,
              ),
            );
    }
  }

  void getTimeList(date) {
    String day = date.toString().split(' ')[0]; //2022-05-10
    for (var dayWithTimeListElement in calenderModel!.schedule) {
      if (day == dayWithTimeListElement.day) {
        timesListData.removeRange(0, timesListData.length);
        setTimeList(dayWithTimeListElement.timeList!);
      }
    }
  }

  bool activateThisDateOrNOt(date) {
    String day = date.toString().split(' ')[0];
    for (var i = 0; i <= availableDays.length - 1; i++) {
      if (day == availableDays[i]) {
        return true;
      }
    }

    return false;
  }

  void chooseTheAvailableDays() {
    for (var element in calenderModel!.schedule) {
      if (element.timeList!.isNotEmpty) {
        availableDays.add(element.day);
      }
    }
  }
}
