import 'package:booking_hotels/core/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRoutes.router,

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.urbanistTextTheme(),

        useMaterial3: true,
      ),

    );
  }
}

