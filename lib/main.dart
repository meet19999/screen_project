import 'package:flutter/material.dart';
import 'package:screen_project/appointment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            //appBarTheme: AppBarTheme.of(context).c,
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: Color(0xFF1C1C1E),
            fontFamily:
                "assets/fonts/Fontspring-DEMO-integralcf-demiboldoblique.otf"),
        debugShowCheckedModeBanner: false,
        home: Appointment());
  }
}
