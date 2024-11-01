import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/layout/layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pokedex Decoding',
      theme: ThemeData(
        textTheme: GoogleFonts.rocknRollOneTextTheme(),
        appBarTheme: const AppBarTheme(
          scrolledUnderElevation: 0,
          shadowColor: Colors.transparent,
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
        ),
        useMaterial3: true,
      ),
      home: const ResponsiveLayout(),
    );
  }
}
