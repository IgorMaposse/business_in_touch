import 'package:flutter/material.dart';
import 'package:flutter_firebase/config/color.dart';

class SingalProduct extends StatelessWidget {
  final String productImage;
  final String productName;
  final VoidCallback? onTap;

  SingalProduct(
      {required this.productImage, required this.productName, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 10),
          height: 230,
          width: 165,
          decoration: BoxDecoration(
            color: Colors.white54,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: onTap,
                child: Container(
                  height: 150,
                  padding: EdgeInsets.all(5),
                  width: double.infinity,
                  child: Image.asset(
                    productImage,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productName,
                        style: TextStyle(
                            color: textColor, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '2000MT',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(left: 5),
                              height: 25,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Center(
                                    child: Text(
                                      '50MT',
                                      style: TextStyle(fontSize: 11),
                                    ),
                                  )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
