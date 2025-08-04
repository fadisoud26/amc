class ApiEndPoints {
  static const String baseURL = 'http://wadimedicalcenter.pythonanywhere.com';

  // ------ welcome url --------------
  static String loginURL = '/patient_login';
  static String signupURL = '/signup';
  static String forgetPasswordURL = '';
  static String confirmURL = '';

  // ------------ -------------
  static String feedbackURL = '/patient/feedback';

  // -------- home url ----------
  static String mainNewsURL = '/patient/home_page/';
  static String offerURL = '/patient/offers/';
  static String appointmentURL = '/patient/my_appointments';
  static String editAppointmentURL = '/patient/edit_appointment';
  static String deleteAppointmentURL = '/patient/delete_appointment';
  static String notificationURL = '/patient/notifications';

  //--------- categort screen url ---------
  static String doctorsListURL = '/patient/doctors_in_section';
  static String devicesListURL = '/patient/devices_in_section';
  static String nursesListURL = '/patient/device_therapists';
  static String doctorScheduleURL = '/patient/doctor_schedule';
  static String nursScheduleURL = '/patient/therapist_schedule';
  static String reserveDoctorAppointmentURL =
      '/patient/reserve_doctor_appointment';
  static String reserveNursAppointmentURL =
      '/patient/reserve_device_appointment';
  static String categorysURL = '/patient/categories';

  //---------- profile url ------------
  static String userProfileURL = '/patient/profile_info';
  static String doctorProfileURL = '/patient/doctor_info';
  static String nursProfileURL = '/patient/therapist_info';
  static String deviceProfileURL = '/patient/device_info';

  // --------- drawer url --------------
  static String editProfileInfoURL = '/patient/edit_profile';
  static String rateAppointmentURL = '/patient/rate_appointment';

  // --------- get image url -----------
  static String getDoctorImageURL = '/patient/get_doctor_image';
}

class APIURI {
  // ---------- categorys uri ------------
  static var categoryURI =
      Uri.parse(ApiEndPoints.baseURL + ApiEndPoints.categorysURL);
  static var doctorsListURI =
      Uri.parse(ApiEndPoints.baseURL + ApiEndPoints.doctorsListURL);
  static var devicesListURI =
      Uri.parse(ApiEndPoints.baseURL + ApiEndPoints.devicesListURL);
  static var nursesListURI =
      Uri.parse(ApiEndPoints.baseURL + ApiEndPoints.nursesListURL);
  static var doctorScheduletURI =
      Uri.parse(ApiEndPoints.baseURL + ApiEndPoints.doctorScheduleURL);
  static var nursScheduletURI =
      Uri.parse(ApiEndPoints.baseURL + ApiEndPoints.nursScheduleURL);
  static var reserveDoctorAppointmentURI = Uri.parse(
      ApiEndPoints.baseURL + ApiEndPoints.reserveDoctorAppointmentURL);
  static var reserveNursAppointmentURI =
      Uri.parse(ApiEndPoints.baseURL + ApiEndPoints.reserveNursAppointmentURL);

  static var feedbackURI =
      Uri.parse(ApiEndPoints.baseURL + ApiEndPoints.feedbackURL);

// ----------------- home uri ---------------
  static var mainNewsURI =
      Uri.parse(ApiEndPoints.baseURL + ApiEndPoints.mainNewsURL);
  static var appointmentURI =
      Uri.parse(ApiEndPoints.baseURL + ApiEndPoints.appointmentURL);
  static var offerURI = Uri.parse(ApiEndPoints.baseURL + ApiEndPoints.offerURL);
  static var editAppointmentURI =
      Uri.parse(ApiEndPoints.baseURL + ApiEndPoints.editAppointmentURL);
  static var deleteAppointmentURI =
      Uri.parse(ApiEndPoints.baseURL + ApiEndPoints.deleteAppointmentURL);

  static var notificationURI =
      Uri.parse(ApiEndPoints.baseURL + ApiEndPoints.notificationURL);

  // -------- get image uri -------------
  static var getDoctorImageURI =
      Uri.parse(ApiEndPoints.baseURL + ApiEndPoints.getDoctorImageURL);

//------------------- profiles uri----------------
  static var userProfileURI =
      Uri.parse(ApiEndPoints.baseURL + ApiEndPoints.userProfileURL);
  static var doctorProfileURI =
      Uri.parse(ApiEndPoints.baseURL + ApiEndPoints.doctorProfileURL);
  static var nursProfileURI =
      Uri.parse(ApiEndPoints.baseURL + ApiEndPoints.nursProfileURL);
  static var deviceProfileURI =
      Uri.parse(ApiEndPoints.baseURL + ApiEndPoints.deviceProfileURL);

  //---------- drawer uri -----------------
  static var editProfileInfoURI =
      Uri.parse(ApiEndPoints.baseURL + ApiEndPoints.editProfileInfoURL);
  static var rateAppointmentURI =
      Uri.parse(ApiEndPoints.baseURL + ApiEndPoints.rateAppointmentURL);

//------------------welcome uri---------------
  static var signupURI =
      Uri.parse(ApiEndPoints.baseURL + ApiEndPoints.signupURL);
  static var confirmURI =
      Uri.parse(ApiEndPoints.baseURL + ApiEndPoints.confirmURL);
  static var forgetPassURI =
      Uri.parse(ApiEndPoints.baseURL + ApiEndPoints.forgetPasswordURL);
  static var loginURI = Uri.parse(ApiEndPoints.baseURL + ApiEndPoints.loginURL);
}
