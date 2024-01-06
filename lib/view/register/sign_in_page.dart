import 'package:flutter/material.dart';
import 'package:nvr_app/view/register/custom_button.dart';
import 'package:nvr_app/view/register/google_sign_in.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

bool _passwordVisible = false;

@override
void initState() {
  _passwordVisible = false;
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();
  void onTap() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, bottom: 30, top: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Column(children: [
                Text(
                  'تسجيل الدخول',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'اهلاً بعودتك, لقد كنت مفتقداً',
                  style: TextStyle(fontSize: 16),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 50),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        textDirection: TextDirection.rtl,
                        decoration: const InputDecoration(
                          hintTextDirection: TextDirection.rtl,
                          hintText: 'البريد الالكتروني',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'الرجاء ادخال البريد الالكتروني';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        textDirection: TextDirection.rtl,
                        obscureText: !_passwordVisible,
                        decoration: InputDecoration(
                          prefixIcon: IconButton(
                              icon: Icon(
                                // Based on passwordVisible state choose the icon
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: const Color(0xffA6A6A6),
                              ),
                              onPressed: () {
                                // Update the state i.e. toogle the state of passwordVisible variable
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              }),
                          hintTextDirection: TextDirection.rtl,
                          hintText: 'كلمة المرور',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'الرجاء ادخال كلمة المرور';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('هل نسيت كلمة المرور؟',
                              style: TextStyle(color: Color(0xffFB229F))),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      CustomButton(
                        text: 'تسجيل',
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/homepage');
                        },
                      )
                    ],
                  ),
                ),
              ),
              GoogleSignIn(
                text1: 'ليس لديك حساب؟ ',
                text2: 'انشاء حساب',
                onTap: onTap,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
