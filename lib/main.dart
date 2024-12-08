import 'package:delnita_motivator/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    _DelnitaApp(),
  );
}

class _DelnitaApp extends StatelessWidget {
  const _DelnitaApp();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "My Love",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: _customTheme(),
    );
  }
}

ThemeData _customTheme() {
  return ThemeData(
    textTheme: GoogleFonts.poppinsTextTheme(),
  );
}
