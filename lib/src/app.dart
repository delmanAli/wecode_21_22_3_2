import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wecode_2021/src/login_screen/login_screen_view.dart';
import 'package:wecode_2021/src/privacy_policy/privacy_policy_screen.dart';
import 'package:wecode_2021/src/profile_screens/create_profile_screen.dart';
import 'package:wecode_2021/src/registeration_screen/register_screen.dart';
import 'package:wecode_2021/src/student_dashboard/student_dashboard.dart';
import 'package:wecode_2021/src/student_screen/student_screen_view.dart';
import 'package:wecode_2021/src/trainers_screen/trainers_screen_view.dart';
import 'package:wecode_2021/src/widgets/auth_handler.dart';

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);
  final String selectedLang = 'ar';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.red,
          textTheme: TextTheme(
              bodyText1: TextStyle(
            fontFamily: selectedLang == 'ar'
                ? GoogleFonts.robotoCondensed().fontFamily
                : GoogleFonts.roboto().fontFamily,
          )),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.red,
          )),
      // theme: ThemeData.dark(),
      initialRoute: '/',
      // initialRoute: '/trainersScreen',
      routes: {
        '/': (context) => AuthHandler(), //this was the Auth handler
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/createProfileScreen': (context) => CreateProfileScreen(),
        '/studentScreen': (context) => const StudentScreen(),
        '/trainersScreen': (context) => const TrainersScreenView(),
        '/privacyPolicyScreen': (context) => const PrivacyPolicyScreen(),
        '/studentDashboard': (context) => StudentDashboard(),
      },
    );
  }
}
