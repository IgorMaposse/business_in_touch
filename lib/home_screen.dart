import 'package:flutter/material.dart';
import 'package:flutter_firebase/config/color.dart';
import 'package:flutter_firebase/screen/home_screen/drawer_side.dart';
import 'package:flutter_firebase/screen/home_screen/singal_product.dart';
import 'package:flutter_firebase/screen/product_over_view/product_overview.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  // Metodo1

  Widget _buildHerbsProduct(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Servicos - Restoracao'),
              Text(
                'View All',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverView(
                            productImage: 'assets/imagens/house1.jpeg',
                            productName: 'Tipo 3',
                          )));
                },
                productImage: 'assets/imagens/house1.jpeg',
                productName: 'Tipo 3',
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverView(
                          productImage: 'assets/imagens/house3.jpeg',
                          productName: 'Principal')));
                },
                productImage: 'assets/imagens/house3.jpeg',
                productName: 'Tipo 2',
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverView(
                          productImage: 'assets/imagens/house1.jpeg',
                          productName: 'Mandioca De Moz')));
                },
                productImage: 'assets/imagens/house1.jpeg',
                productName: 'Tipo 2',
              ),
            ],
          ),
        ),
      ],
    );
  }

  //<<<<<<>>>>>>>>>>>>>>  Metodo Feshproducts <<<<<>>>>>>>>>>.>>>>>>

  Widget _buildFreshProduct() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Servicos de Cathering'),
              Text(
                'View All',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingalProduct(
                productImage: 'assets/imagens/house2.jpeg',
                productName: 'Tipo4 ',
              ),
              SingalProduct(
                productImage: 'assets/imagens/house2.jpeg',
                productName: 'Tipo4',
              ),
              SingalProduct(
                productImage: 'assets/imagens/house2.jpeg',
                productName: 'Tipo4',
              ),
            ],
          ),
        ),
      ],
    );
  }

//<<<<<<>>>>>>>>>>>>>>  Metodo para Feshproducts <<<<<>>>>>>>>>>.>>>>>>

  Widget _buildRootProducts(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Servicos - Lazeres'),
              const Text(
                'View All',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingalProduct(
                productImage: 'assets/imagens/house3.jpeg',
                productName: 'Beleza de Moz',
              ),
              SingalProduct(
                productImage: 'assets/imagens/house3.jpeg',
                productName: 'Nome da Imagem',
              ),
              SingalProduct(
                productImage: 'assets/imagens/house3.jpeg',
                productName: 'Nome da Imagem',
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget singalProduct() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 230,
      width: 160,
      decoration: BoxDecoration(
        color: const Color(0xffd9dad9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.asset('assets/imagens/mandioca2.JPG'),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Mandioca Fesca',
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  const Expanded(
                    child: Text('2kg / 100.00 Mt',
                        style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 12)),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(left: 1),
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(8),
                            // color: Colors.black,
                          ),
                          child: Row(
                            children: [
                              const Expanded(
                                  child: Text(
                                '500 MT',
                                style: TextStyle(fontSize: 12),
                              )),
                              const Center(
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  size: 20,
                                  color: Colors.yellow,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      drawer: DrawerSide(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: textColor),
        title: Text(
          'Home',
          style: TextStyle(color: textColor, fontSize: 17),
        ),
        actions: [
          const CircleAvatar(
            radius: 20,
            backgroundColor: Color(0xffd4d181),
            child: Icon(
              Icons.search,
              size: 17,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              backgroundColor: primaryColor,
              radius: 12,
              child: Icon(
                Icons.shop,
                size: 17,
                color: textColor,
              ),
            ),
          ),
        ],
        backgroundColor: const Color(
          0xffd6b738,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: const AssetImage('assets/imagens/fhd_image.jpeg')),
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      //color: Colors.blue[400],
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 145, bottom: 10),
                            child: Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Color(0xffd1ad17),
                                borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Hotelaria',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      shadows: [
                                        const BoxShadow(
                                          color: Colors.green,
                                          blurRadius: 10,
                                          offset: Offset(3, 1),
                                        ),
                                      ]),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            '30% off',
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.green[100],
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 30),
                            child: Text(
                              'Veja todos nossos Servicos',
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  )
                ],
              ),
            ),
            _buildHerbsProduct(context),
            _buildFreshProduct(),
            _buildRootProducts(context),
          ],
        ),
      ),
    );
  }
}
