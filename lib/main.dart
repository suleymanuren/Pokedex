import 'package:flutter/material.dart';
import 'package:pokedex/home_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: Size(412, 732),
      builder: ()=> MaterialApp(
        title: 'Pokedex',
        theme: ThemeData.dark().copyWith(
          textTheme: GoogleFonts.latoTextTheme()),
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
      ),
    );
  }
}




