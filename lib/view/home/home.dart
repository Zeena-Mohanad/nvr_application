import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/nvr.png'),
              const SizedBox(
                height: 30,
              ),
              const Column(children: [
                Text(
                  'اضافة اجهزة',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  ' QR قم بتوصيل كاميرا منزلك أو مكتبك باستخدام رمز ',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'تحكم بها جميعاً بأستخدام تطبيق واحد .IP او اكتب عنوان ',
                  style: TextStyle(fontSize: 16),
                ),
              ]),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Text('اي واحد تريد اختياره'),
                  ),
                  Expanded(child: Divider())
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    child: Container(
                      height: 145,
                      width: 145,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Color(0xffFC0293),
                            Color(0xffB82CE9),
                          ]),
                          borderRadius: BorderRadius.circular(16)),
                      child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.qr_code_scanner,
                              color: Colors.white,
                              size: 50,
                            ),
                            Text(
                              'QR رمز',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            )
                          ]),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      height: 145,
                      width: 145,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Color(0xff8A21C8),
                            Color(0xff120472),
                          ]),
                          borderRadius: BorderRadius.circular(16)),
                      child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.mode_edit_outlined,
                              color: Colors.white,
                              size: 50,
                            ),
                            Text(
                              'IP عنوان',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            )
                          ]),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month_outlined), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.account_box), label: '')
          ]),
    );
  }
}
