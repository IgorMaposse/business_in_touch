import 'package:flutter/material.dart';
import 'package:flutter_firebase/config/color.dart';
import 'package:flutter_firebase/main.dart';
import 'package:flutter_firebase/screen/home_screen/drawer_side.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  Widget listTile({IconData? icon, required String title}) {
    return Column(
      children: [
        Divider(
          height: 1,
        ),
        ListTile(
          leading: Icon(icon),
          title: Text(title),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
          elevation: 0.0,
          title: Text(
            'My Profile',
            style: TextStyle(fontSize: 18, color: textColor),
          ),
          backgroundColor: primaryColor,
          foregroundColor: textColor),
      drawer: DrawerSide(),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 100,
                color: primaryColor,
              ),
              Container(
                height: 500,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: scaffoldBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 250,
                            height: 80,
                            padding: EdgeInsets.only(left: 5, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        'Xadreque Zandamela',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: textColor),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('Xadreque.Zandamela@South32.net'),
                                    ],
                                  ),
                                ),
                                CircleAvatar(
                                  backgroundColor: primaryColor,
                                  radius: 15,
                                  child: CircleAvatar(
                                    radius: 14,
                                    child: Icon(Icons.edit),
                                    backgroundColor: scaffoldBackgroundColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    listTile(icon: Icons.shop_outlined, title: "My Order"),
                    listTile(
                        icon: Icons.location_on_outlined,
                        title: "Location Delivery Address"),
                    listTile(
                        icon: Icons.person_outlined, title: "Refer A Fiends"),
                    listTile(
                        icon: Icons.file_copy_outlined,
                        title: "Terms & Conditions"),
                    listTile(
                        icon: Icons.policy_outlined, title: "Privacy Policy"),
                    listTile(icon: Icons.add_chart, title: "About"),
                    listTile(
                        icon: Icons.exit_to_app_outlined, title: "Log Out"),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 28, left: 20),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/imagens/sgh.JPG'),
              radius: 55,
              backgroundColor: scaffoldBackgroundColor,
            ),
          ),
        ],
      ),
    );
  }
}
