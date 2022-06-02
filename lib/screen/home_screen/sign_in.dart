import 'package:flutter/material.dart';
import 'package:flutter_firebase/home_screen.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

String email = '';
String senha = '';

class SigIn extends StatefulWidget {
  SigIn({Key? key}) : super(key: key);

  @override
  State<SigIn> createState() => _SigInState();
}

class _SigInState extends State<SigIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/imagens/background.jpeg')),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            //color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Entre Conta Para Continuar",
                  style: TextStyle(color: Colors.lightGreen, fontSize: 30),
                ),
                Column(
                  children: [
                    Text(
                      'Gestao Hoteira',
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          shadows: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Colors.green.shade900,
                              offset: Offset(3, 3),
                            ),
                          ]),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SignInButton(Buttons.Google, text: 'Sign up with Google',
                        onPressed: () {
                      /*

                          _googleSignUp().then((value) => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> HomeScreen(),

                          ),
                          );
                          */
                    }),
                  ],
                ),

                Column(
                  children: [
                    SignInButton(Buttons.Facebook,
                        text: 'Sign up with FaceBook', onPressed: () {}),
                  ],
                ),
                //----------Campos -------------//

                Padding(
                  // padding: const EdgeInsets.all(20.0)
                  // ,
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 30),
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (text) {
                          email = text;
                          // senha=text;
                          // prinl(text);
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            labelText: "Email", border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        onChanged: (text) {
                          senha = text;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "Senha", border: OutlineInputBorder()),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        },
                        child: Container(
                            width: double.infinity,
                            child: Text(
                              'Logar',
                              textAlign: TextAlign.center,
                            )),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
