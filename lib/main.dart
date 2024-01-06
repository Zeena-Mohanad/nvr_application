import 'package:flutter/material.dart';
import 'package:nvr_app/view/home/home.dart';
import 'package:nvr_app/view/register/sign_in_page.dart';
import 'package:nvr_app/view/register/sign_up_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/':(context) => const SignUpPage(),
        '/signin':(context) => const SignInPage(),
        '/homepage':(context) => const HomePage()
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffFB229F)),
          useMaterial3: true,
          unselectedWidgetColor: Colors.grey,
          inputDecorationTheme: InputDecorationTheme(
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color.fromARGB(98, 87, 87, 148)),
                  borderRadius: BorderRadius.circular(8)),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xff000066), width: 2),
                  borderRadius: BorderRadius.circular(8)))),
      
    );
  }
}
