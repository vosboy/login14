import 'package:flutter/material.dart';
import 'package:login14/loing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(5.0),
          //携帯で見るとappbarがあり、色も赤に見えたので表示してます。ただ、パソコン画面だとappbarは表示されてないです。
          child: AppBar(
            backgroundColor: Colors.red,
          ),
        ),
        backgroundColor: const Color(0xFFE0E0E0),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 280,
                width: 390,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      //画面でみた色にしており、同じにはなってないです。
                      colors: [
                        Color(0xFFF55B1F),
                        Color(0xFFF46E1F),
                        Color(0xFFF37C1E),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    color: Colors.orange,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                        100.0,
                      ),
                    )),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 110,
                          width: 100,
                          //iconをimageに変更してます。
                          child: Image.asset(
                            'lib/images/icon.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 55,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15.0,
                          ),
                          child: TextButton(
                            //uiでも作動はしてないのでnullにしてます。
                            onPressed: null,
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 38,
              ),
              const LoginPage(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: TextButton(
                      //uiでも作動はしてないのでnullにしてます。
                      onPressed: null,
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(fontSize: 14, color: Colors.black87),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 230,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  TextButton(
                    //uiでも作動はしてないのでnullにしてます。
                    onPressed: null,
                    child: Text(
                      'Signup',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFFF55B1F),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
