import 'package:flutter/material.dart';
import 'package:flutter_firebase/config/constants.dart';

class BottomButtons extends StatefulWidget {
  BottomButtons({Key? key}) : super(key: key);

  @override
  State<BottomButtons> createState() => _BottomButtonsState();
}

class _BottomButtonsState extends State<BottomButtons> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      top: size.width * 1.5,
      right: size.width * 0.3,
      child: Padding(
        padding: const EdgeInsets.only(bottom: appPadding),
        child: Container(
          width: size.width * 0.4,
          height: 60,
          decoration: BoxDecoration(
              color: Colors.amber[900],
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: darkBlue.withOpacity(0.6),
                  offset: Offset(0, 10),
                  blurRadius: 10,
                )
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.map_outlined,
                color: white,
              ),
              Text(
                'Map View',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: white,
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
