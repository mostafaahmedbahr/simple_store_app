import 'package:electrical_store_mobile_app/constant.dart';
import 'package:electrical_store_mobile_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.almaraiTextTheme(Theme.of(context).textTheme),
        primaryColor: kPrimaryColor,
        accentColor: kPrimaryColor,
      ),
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [Locale("ar", "AE")],
      locale: Locale("ar", "AE"),
      home: HomePage(),
    );
  }
}
