import 'package:flutter/material.dart';
import 'package:flutter_firebase/home_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color(0xFF8A2387),
            Color(0xFFE94057),
            Color(0xFFF27121),
          ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 80),
              Image.asset(
                'assets/imagens/o.png',
                scale: 3,
              ),
              SizedBox(height: 8),
              Container(
                height: 480,
                width: 325,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Heesllo',
                      
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Please Login to  your Account',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 250,
                      child: const TextField(
                        decoration: InputDecoration(
                          labelText: 'Email Address',
                          suffixIcon: Icon(
                            Icons.email_outlined,
                            size: 17,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 250,
                      child: const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          suffixIcon: Icon(
                            Icons.remove_red_eye_sharp,
                            size: 17,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, top: 20, right: 40, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Forget Password',
                            style: TextStyle(
                              color: Colors.orangeAccent[700],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 250,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            gradient: const LinearGradient(colors: [
                              Color(0xFF8A2387),
                              Color(0xFFE94057),
                              Color(0xFFF27121),
                            ])),
                        child: const Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Or Login using Social Media',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.facebook,
                          color: Colors.orangeAccent[700],
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
