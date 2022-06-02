import 'package:flutter/material.dart';
import 'package:flutter_firebase/config/color.dart';
import 'package:flutter_firebase/home_screen.dart';
import 'package:flutter_firebase/screen/home_screen/my_profile/my_profile.dart';
import 'package:flutter_firebase/screen/home_screen/sign_in.dart';

class DrawerSide extends StatelessWidget {
  const DrawerSide({Key? key}) : super(key: key);

  Widget listTile(
      {required String title, IconData? icon, VoidCallback? onTap}) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        icon,
        size: 32,
      ),
      title: Text(
        title,
        style: TextStyle(color: textColor),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: 100,
        color: primaryColor,
        child: ListView(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/imagens/sgh.JPG'),
                    radius: 55,
                    backgroundColor: scaffoldBackgroundColor,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Bem vindo ao SGH'),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        height: 30,
                        child: OutlineButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SigIn()));
                          },
                          child: Text('Login'),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: BorderSide(width: 2)),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            //Chamando o metodo de Titula
            listTile(
                icon: Icons.home_outlined,
                title: 'Home',
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                }),
            listTile(icon: Icons.shop_outlined, title: 'Review Cart'),
            listTile(
                icon: Icons.person_outline,
                title: 'My Profile',
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => MyProfile(),
                    ),
                  );
                }),
            listTile(icon: Icons.notifications_outlined, title: 'Notification'),
            listTile(icon: Icons.star_outlined, title: 'Rating & Review'),
            listTile(icon: Icons.favorite_outlined, title: 'Wishlist'),
            listTile(icon: Icons.copy_outlined, title: 'Raise a Complaint'),
            listTile(icon: Icons.format_quote_outlined, title: 'FAQS'),

            Container(
              height: 350,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contact Suport',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text('Ligue-nos:'),
                      SizedBox(
                        width: 10,
                      ),
                      Text('+258 842510516'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                  ),
                  Row(
                    children: [
                      Text('email:'),
                      SizedBox(
                        width: 10,
                      ),
                      Text('tecnicozanda@gmail.com'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
