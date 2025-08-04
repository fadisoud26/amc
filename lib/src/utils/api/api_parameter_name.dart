class ApiParName {
  static String result = 'result';
  static String data = 'data';
  static String token = 'token';
  static String message = 'message';

  // ---------- welcome parameter api -----------
  static var loginParAPI = _LogInParameter();
  static var signupParAPI = _SignUpParameter();

  // --------------profile parameter api ----------
  static var doctorProfileParAPI = _DoctorProfileParameter();
  static var deviceProfileParAPI = _DeviceProfileParameter();
  static var nursProfileParAPI = _NursProfileParameter();

  // ----------- category parameter api --------
  static var clinicParAPI = _ClinicParameter();
  static var nursListParAPI = _NursListParameter();
  static var doctorAppointmentParAPI = _DoctorAppointmentParameter();
  static var reserveDoctorAppointmentParAPI =
      _ReserveDoctorAppointmentParameter();
  static var reserveNursAppointmentParAPI = _ReserveNursAppointmentParameter();
  static var nursCalenderParAPI = _NursCalenderParameter();

  //----------- my appointment parameter api ---
  static var editAppointmentCalenderParAPI =
      _EditAppointmentCalenderParameter();
  static var deleteAppointmentCalenderParAPI =
      _DeleteAppointmentCalenderParameter();

  // ----------- drawer parameter api -----------------
  static var editProfileInfoParAPI = _EditProfileInformationParameter();
  static var rateAppointmentParAPI = _RateAppointmentParameter();

  static var feedbackParAPI = _FeedbackParameter();
}

class _FeedbackParameter {
  final String message = 'message';
}

class _DoctorAppointmentParameter {
  final String doctorName = 'doctorName';
}

class _NursListParameter {
  final name = 'name';
}

class _NursCalenderParameter {
  final String deviceName = 'deviceName';
  final String nursName = 'therapistName';
}

class _EditAppointmentCalenderParameter {
  final id = 'id';
  final isDoctor = 'doctorAppointment';
  final date = 'date';
  final time = 'time';
}

class _DeleteAppointmentCalenderParameter {
  final String id = 'id';
  final String isDoctor = 'doctorAppointment';
}

class _ReserveDoctorAppointmentParameter {
  final String doctorName = 'doctorName';
  final String appointmentDate = 'appointmentDate';
  final String appointmentTime = 'appointmentTime';
}

class _ReserveNursAppointmentParameter {
  final String deviceName = 'deviceName';
  final String nursName = 'therapistName';
  final String appointmentDate = 'appointmentDate';
  final String appointmentTime = 'appointmentTime';
}

class _EditProfileInformationParameter {
  final String gender = 'gender';
  final String relationShip = 'relationship';
  final String birthdayDate = 'birth_date';
  final String number = 'phoneNumber';
  final String profilePicture = 'profile_picture';
}

class _ClinicParameter {
  final String name = 'name';
}

class _DoctorProfileParameter {
  final String doctorName = 'doctorName';
}

class _DeviceProfileParameter {
  final String deviceName = 'deviceName';
}

class _NursProfileParameter {
  final String nursName = 'therapistName';
}

class _LogInParameter {
  final String username = 'username';
  final String password = 'password';
}

class _SignUpParameter {
  final String username = 'username';
  final String password = 'password';
  final String gender = 'gender';
  final String relationShip = 'relationship';
  final String phoneNumber = 'phoneNumber';
  final String birthdayDate = 'birthDate';
  final String profileImage = 'profile_picture';
}

class _RateAppointmentParameter {
  final String id = 'id';
  final String doctorAppointment = 'doctorAppointment';
  final String cleanless = 'cleanless';
  final String treatmentOdMedicalStaff = 'treatment_od_medical_staff';
  final String therapistingRate = 'therapisting_rate';
  final String receptionRate = 'reception_rate';
}
