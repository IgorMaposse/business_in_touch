import 'package:flutter/material.dart';
import 'package:flutter_firebase/config/color.dart';
import 'package:flutter_firebase/config/mysql.dart';

class Booking extends StatefulWidget {
  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  final _formKey = GlobalKey<FormState>();
  var db = new Mysql();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: textColor),
        title: Text(
          'Detalhes da Reserva',
          style: TextStyle(color: textColor),
        ),
        backgroundColor: const Color(
          0xffd6b738,
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/imagens/pexels4.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(110),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Form(
                key: _formKey,
                child: ListView(
                  children: [
                    TextFormField(
                      readOnly: false,
                      decoration: InputDecoration(
                        enabled: false,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        labelText: "Referencia",
                        filled: true,
                        fillColor: Colors.black12,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      readOnly: false,
                      decoration: InputDecoration(
                        enabled: false,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        labelText: "Referencia",
                        filled: true,
                        fillColor: Colors.black12,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      readOnly: false,
                      decoration: InputDecoration(
                        enabled: false,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        labelText: "Referencia",
                        filled: true,
                        fillColor: Colors.black12,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      readOnly: false,
                      decoration: InputDecoration(
                        enabled: false,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        labelText: "Referencia",
                        filled: true,
                        fillColor: Colors.black12,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Salvar',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.amberAccent),
                        ),
                      ),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
