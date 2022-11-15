import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:healthspace_settings/screens/edit_profile_settings.dart';
import 'package:healthspace_settings/screens/help.dart';
import 'screens/getstarted.dart';
import 'screens/language_settings.dart';
import 'screens/password_settings.dart';
import 'screens/account_settings.dart';

import 'screens/settings.dart';

//import 'screens/home.dart';
//import 'screens/signin.dart';
import 'screens/signup.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  get color => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: GetStarted(),
    );
  }
}
