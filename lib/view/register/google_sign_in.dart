import 'package:flutter/material.dart';

class GoogleSignIn extends StatelessWidget {
  const GoogleSignIn({
    super.key,
    required this.text1,
    required this.text2,
    required this.onTap,
  });

  final String text1;
  final String text2;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Expanded(child: Divider()),
            Padding(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: Text('او الاستمرار مع'),
            ),
            Expanded(child: Divider())
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(25),
          child: InkWell(
            child: Image.asset(
              'assets/images/google.png',
              width: 35,
              height: 35,
            ),
          ),
        ),
        InkWell(
          onTap: onTap,
          child: RichText(
            text: TextSpan(
                style: const TextStyle(fontSize: 16, color: Colors.grey),
                children: <TextSpan>[
                  TextSpan(text: text1),
                  TextSpan(
                      text: text2,
                      style: const TextStyle(
                          color: Color(0xffFB229F),
                          fontWeight: FontWeight.bold))
                ]),
          ),
        ),
      ],
    );
  }
}
