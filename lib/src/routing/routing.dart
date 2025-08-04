import 'package:alwadi_medical_center/src/screens/binding/categorys_screens_binding/clinic_with_doctors_or_devices_screen_binding.dart';
import 'package:alwadi_medical_center/src/screens/binding/categorys_screens_binding/doctor_screen_binding.dart';
import 'package:alwadi_medical_center/src/screens/binding/categorys_screens_binding/clinic_with_nurs_screen_binding.dart';
import 'package:alwadi_medical_center/src/screens/binding/categorys_screens_binding/nurs_screen_binding.dart';
import 'package:alwadi_medical_center/src/screens/binding/categorys_screens_binding/see_all_medical_section_binding.dart';
import 'package:alwadi_medical_center/src/screens/binding/categorys_screens_binding/see_all_services_section_binding.dart';
import 'package:alwadi_medical_center/src/screens/binding/confirme_screen_binding.dart';
import 'package:alwadi_medical_center/src/screens/binding/doctor_profile_screen_binding.dart';
import 'package:alwadi_medical_center/src/screens/binding/drawer_screen_binding/account_setting_binding.dart';
import 'package:alwadi_medical_center/src/screens/binding/drawer_screen_binding/complaints_binding.dart';
import 'package:alwadi_medical_center/src/screens/binding/drawer_screen_binding/contact_us_binding.dart';
import 'package:alwadi_medical_center/src/screens/binding/drawer_screen_binding/help_binding.dart';
import 'package:alwadi_medical_center/src/screens/binding/drawer_screen_binding/our_sections_binding.dart';
import 'package:alwadi_medical_center/src/screens/binding/drawer_screen_binding/setting_binding.dart';
import 'package:alwadi_medical_center/src/screens/binding/edit_appointment_binding.dart';
import 'package:alwadi_medical_center/src/screens/binding/home_screen_binding.dart';
import 'package:alwadi_medical_center/src/screens/binding/login_screen_binding.dart';
import 'package:alwadi_medical_center/src/screens/binding/onboarding_binding.dart';
import 'package:alwadi_medical_center/src/screens/binding/signup_screen_binding.dart';
import 'package:alwadi_medical_center/src/screens/binding/user_profile_screen_binding.dart';
import 'package:alwadi_medical_center/src/screens/view/drawer_pages/accountSettingScreen/account_setting_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/drawer_pages/complaintsScreen/complaints_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/drawer_pages/contactUsScreen/contact_us_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/drawer_pages/helpScreen/help_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/drawer_pages/ourSectionsScreen/our_sections_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/drawer_pages/settingScreen/setting_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/home_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/main_screens/appointment_screen/edit_appointment_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/main_screens/category_screen/category_body/see_all_medical_section_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/main_screens/category_screen/category_body/see_all_services_section_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/main_screens/category_screen/inside_widget/clinic_with_doctors_or_devices_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/main_screens/category_screen/inside_widget/doctor_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/main_screens/category_screen/inside_widget/clinic_with_nurs_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/main_screens/category_screen/inside_widget/nurs_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/profile_pages/doctor_device_nurs_profile/doctor_device_nurs_profile_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/profile_pages/user_profile/user_profile_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/welcome_pages/confirm_screen/confirme_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/welcome_pages/login_screen/login_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/welcome_pages/onboarding_screen/onboarding_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/welcome_pages/signup_screen/signup_screen.dart';
import 'package:get/get.dart';

class Routes {
  static final routes = [
    GetPage(
        name: OnboardingScreen.id,
        page: () => OnboardingScreen(),
        binding: OnBoardingBinding()),
    GetPage(
        name: LogInScreen.id,
        page: () => const LogInScreen(),
        binding: LogInBinding()),
    GetPage(
        name: SignUpScreen.id,
        page: () => const SignUpScreen(),
        binding: SignUpBinding()),
    GetPage(
        name: ConfirmeScreen.id,
        page: () => const ConfirmeScreen(),
        binding: ConfirmeBinding()),
    GetPage(
        name: HomeScreen.id, page: () => HomeScreen(), binding: HomeBinding()),
    GetPage(
        name: ClinicWithDoctorsOrDevicesScreen.id,
        page: () => ClinicWithDoctorsOrDevicesScreen(),
        binding: ClinicWithDoctorsOrDevicesBinding()),
    GetPage(
        name: UserProfileScreen.id,
        page: () => UserProfileScreen(),
        binding: UserProfileBinding()),
    GetPage(
        name: DoctorDeviceNursProfileScreen.id,
        page: () => DoctorDeviceNursProfileScreen(),
        binding: DoctorDeviceNursProfileBinding()),
    GetPage(
        name: DoctorScreen.id,
        page: () => DoctorScreen(),
        binding: DoctorBinding()),
    GetPage(
        name: NursScreen.id, page: () => NursScreen(), binding: NursBinding()),
    GetPage(
        name: ClinicWithNursScreen.id,
        page: () => ClinicWithNursScreen(),
        binding: ClinicWithNursBinding()),
    GetPage(
        name: ContactUsScreen.id,
        page: () => ContactUsScreen(),
        binding: ContactUsBinding()),
    GetPage(
        name: AccountSettingScreen.id,
        page: () => AccountSettingScreen(),
        binding: AccountSettingBinding()),
    GetPage(
        name: HelpScreen.id, page: () => HelpScreen(), binding: HelpBinding()),
    GetPage(
        name: SettingScreen.id,
        page: () => SettingScreen(),
        binding: SettingBinding()),
    GetPage(
        name: ComplaintsScreen.id,
        page: () => ComplaintsScreen(),
        binding: ComplaintsBinding()),
    GetPage(
        name: OurSectionsScreen.id,
        page: () => OurSectionsScreen(),
        binding: OurSectionsBinding()),
    GetPage(
        name: EditAppointmentScreen.id,
        page: () => EditAppointmentScreen(),
        binding: EditAppointmentBinding()),
    GetPage(
        name: SeeAllMedicalSectionScreen.id,
        page: () => SeeAllMedicalSectionScreen(),
        binding: SeeAllMedicalSectionBinding()),
    GetPage(
        name: SeeAllServicesSectionScreen.id,
        page: () => SeeAllServicesSectionScreen(),
        binding: SeeAllServicesSectionBinding()),
  ];
}
/*
class CounterRoute {
  const CounterRoute._();

  static const String name = '/';
  static  Bindings binding = LogInBinding();
  static const Widget screen = LogInScreen();

  static final GetPage page = GetPage(
    name: name,
    binding: binding,
    page: () => screen,
  );

  static GetPageRoute get pageRoute => GetPageRoute(
        settings: const RouteSettings(name: name),
        binding: binding,
        page: () => screen,
      );
}
*/