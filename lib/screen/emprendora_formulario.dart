import 'package:flutter/material.dart';
import 'package:flutter_firebase/config/color.dart';
import 'package:flutter_firebase/config/mysql.dart';
import 'package:flutter_firebase/home_screen.dart';

class EmprenderaFormulario extends StatefulWidget {
  @override
  State<EmprenderaFormulario> createState() => _EmprenderaFormularioState();
}

class _EmprenderaFormularioState extends State<EmprenderaFormulario> {
  final _formKey = GlobalKey<FormState>();
  var db = new Mysql();
  String dropdownvalue = 'Catring';
  TextEditingController nameEditingController = TextEditingController();
  TextEditingController adressEditingController = TextEditingController();
  TextEditingController dateEditingController = TextEditingController();

  // Metodo1
  var items = [
    'Catring',
    'Bufe',
    'Cleaning',
    'rooms',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: textColor),
        title: Text(
          'Enterpreneur',
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
                      controller: nameEditingController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        labelText: "Name",
                        filled: true,
                        fillColor: Colors.black12,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: adressEditingController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        labelText: "Adreess",
                        filled: true,
                        fillColor: Colors.black12,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: dateEditingController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        labelText: "Date",
                        filled: true,
                        fillColor: Colors.black12,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blueGrey),
                          child: Center(
                            child: DropdownButton(
                              // Initial Value
                              value: dropdownvalue,
                              underline: DropdownButtonHideUnderline(
                                  child: Container()),

                              // Down Arrow Icon
                              icon: const Icon(Icons.keyboard_arrow_down),

                              // Array list of items
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              // After selecting the desired option,it will
                              // change button value to selected value
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue = newValue!;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Location',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 220,
                    ),
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Save',
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
