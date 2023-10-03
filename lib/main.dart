import 'package:booking_hotels/core/utils/routes.dart';
import 'package:booking_hotels/features/authentication/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:booking_hotels/features/help_and_support/presentation/manager/chat_cubit/chat_cubit.dart';
import 'package:booking_hotels/features/home/presentation/views/manager/cart_cubit/cart_cubit.dart';
import 'package:booking_hotels/features/home/presentation/views/manager/favorite_cubit/favorite_cubit.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/home/presentation/views/manager/home_cubit/home_cubit.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
        BlocProvider(
          create: (context) => ChatCubit(),
        ),
        BlocProvider(
          create: (context) => HomeCubit(),
        ),
        BlocProvider(
          create: (context) => FavoriteCubit(),
        ),
        BlocProvider(
          create: (context) => CartCubit(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRoutes.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.urbanistTextTheme(),
          useMaterial3: true,
        ),
      ),
    );
  }
}
