import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';
import 'login.dart';
import 'menu.dart';
import 'signup.dart';
import 'welcome.dart';
import 'going_out.dart';
import 'settings.dart';
import 'emergency_contact_settings.dart';

void main() => runApp(Soteria());

class Soteria extends StatelessWidget {
  const Soteria({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      title: 'Soteria',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
          bodyText1: GoogleFonts.montserrat(textStyle: textTheme.bodyText1),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
      routes: {
        '/welcome': (context) => WelcomePage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
        '/goingOut': (context) => ClubPage(),
        // 'settings': (context) => SettingsPage(),
        '/settings': (context) => SettingsPage(),
        '/settings/emergency_contact_settings': (context) =>
            EmergencyContactSettingsPage(),
        '/menu': (context) => MenuPage()
      },
    );
  }
}
