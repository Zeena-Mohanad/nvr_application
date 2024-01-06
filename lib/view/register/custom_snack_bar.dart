import 'package:flutter/material.dart';

class CustomSnackBar extends StatelessWidget {
  const CustomSnackBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(top: 5),
          padding:
              const EdgeInsets.only(left: 16, right: 30, top: 8, bottom: 8),
          decoration: BoxDecoration(
            color: const Color(0xFFBB3329),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '!حدث خطأ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'تأكد من كتابة البريد الالكتروني بشكل صحيح',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        Positioned(
            top: -16, right: 4, child: Image.asset('assets/icons/error.png'))
      ],
    );
  }
}
