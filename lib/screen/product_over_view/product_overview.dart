import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_firebase/config/color.dart';
import 'package:flutter_firebase/screen/booking.dart';
import 'package:flutter_firebase/widgets/bottom_buttons.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

enum SinginCharacter { fill, outline }

class ProductOverView extends StatefulWidget {
  final String productName;
  final String productImage;

  ProductOverView({required this.productImage, required this.productName});

  @override
  State<ProductOverView> createState() => _ProductOverViewState();
}

class _ProductOverViewState extends State<ProductOverView> {
  SinginCharacter _character = SinginCharacter.fill;

  Widget bottonNavigatorBar({
    required Color iconColor,
    required Color backgroundColor,
    required Color color,
    required String title,
    required IconData iconData,
  }) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.all(5),
      color: backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            size: 17,
            color: iconColor,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            title,
            style: TextStyle(color: color),
          )
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: textColor),
          title: Text(
            'Detalhes - Sector',
            style: TextStyle(color: textColor),
          ),
          backgroundColor: const Color(
            0xffd6b738,
          ),
        ),
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              child: Column(
                children: [
                  ListTile(
                    title: Text(widget.productName),
                    subtitle: Text('2000 MT'),
                  ),
                  Container(
                    height: 250,
                    padding: EdgeInsets.all(20),
                    child: ImageSlideshow(
                      initialPage: 0,
                      children: [
                        Image.asset(
                          'assets/imagens/indoor1.jpg',
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          'assets/imagens/indoor2.jpg',
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          'assets/imagens/indoor3.jpg',
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          'assets/imagens/indoor4.jpg',
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          'assets/imagens/indoor5.jpg',
                          fit: BoxFit.cover,
                        )
                      ],
                      onPageChanged: (value) {
                        print('Page changed: $value');
                      },
                      autoPlayInterval: 3000,
                      isLoop: true,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    child: Text(
                      'Disponivel',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 3,
                              backgroundColor: Colors.green[700],
                            ),
                            Radio(
                              value: SinginCharacter.fill,
                              groupValue: _character,
                              activeColor: Colors.green[700],
                              onChanged: (value) {},
                            ),
                          ],
                        ),
                        Text('2000 MT'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.red),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Booking()));
                                  },
                                  child: Text('Reservar')),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About This Apartament',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Six Senses resort in Vietnam. Sustainable boutique hotel on a private beach, Six Senses resort in Vietnam. Sustainable boutique hotel on a private beach, Six Senses resort in Vietnam. Sustainable boutique hotel on a private beach, Six Senses resort in Vietnam. Sustainable boutique hotel on a private beach.',
                          style: TextStyle(
                            fontSize: 16,
                            color: textColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            BottomButtons()
          ],
        ),
        backgroundColor: Colors.grey[350]);
  }
}
