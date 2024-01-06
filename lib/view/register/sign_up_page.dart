import 'package:flutter/material.dart';
import 'package:nvr_app/view/register/custom_button.dart';
import 'package:nvr_app/view/register/custom_snack_bar.dart';
import 'package:nvr_app/view/register/google_sign_in.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

bool _passwordVisible = false;
@override
void initState() {
  _passwordVisible = false;
}

class _SignUpPageState extends State<SignUpPage> {
  bool checkboxvalue = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signin');
                },
                child: const Text(
                  'تخطي',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, bottom: 30, top: 50),
          child: Column(
            children: [
              const Column(children: [
                Text(
                  'انشاء حساب',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'ادخل بريدك الالكتروني وكلمة المرور لانشاء الحساب',
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: RichText(
                              text: const TextSpan(
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                  children: <TextSpan>[
                                    TextSpan(text: ' اوافق على'),
                                    TextSpan(
                                        text:
                                            ' الشروط والاحكام وسياسة الخصوصية',
                                        style:
                                            TextStyle(color: Color(0xffFB229F)))
                                  ]),
                            ),
                          ),
                          Transform.scale(
                            scale: 1.1,
                            child: SizedBox(
                              width: 24,
                              height: 24,
                              child: Checkbox(
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: checkboxvalue,
                                onChanged: (value) {
                                  setState(() {
                                    checkboxvalue = value!;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      CustomButton(
                        text: 'انشاء حساب',
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // If the form is valid, display a snackbar. In the real world,
                            // you'd often call a server or save the information in a database.
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  behavior: SnackBarBehavior.floating,
                                  backgroundColor: Colors.transparent,
                                  elevation: 0,
                                  content: CustomSnackBar()),
                            );
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
              GoogleSignIn(
                text1: 'هل لديك حساب؟ ',
                text2: 'تسجيل الدخول',
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/signin');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
