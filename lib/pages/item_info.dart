import 'package:flutter/material.dart';
import 'package:flutter_costumeshop/pages/catalog_page.dart';
import 'package:flutter_costumeshop/products.dart';

class ItemInfo extends StatelessWidget {
  final Product product;
  const ItemInfo({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topPad = MediaQuery.of(context).size.height - 10;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 243, 243),
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color.fromARGB(255, 243, 243, 243),
        elevation: 0,
        title: Text(
          product.title,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(product.image, fit: BoxFit.fill),
            const Padding(
              padding: EdgeInsets.only(top: 296),
              child: MySheet(),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 310, right: 14, left: 14),
                  child: Text(
                    product.description,
                    maxLines: 7,
                    style: const TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 460, left: 14),
              child: DescriptionSuitMaterial(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 630),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 35,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.purpleAccent),
                        onPressed: () {},
                        child: Text(
                          'Купить за ${product.price} руб.',
                          style: TextStyle(fontSize: 18),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MySheet extends StatelessWidget {
  const MySheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2 + 15,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
    );
  }
}

class DescriptionSuitMaterial extends StatelessWidget {
  const DescriptionSuitMaterial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Материал:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lightGreen),
              child: const Center(
                child: Text('70%',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lightBlue),
              child: const Center(
                child: Text('30%',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
            )
          ],
        ),
        const SizedBox(height: 8),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 16,
              width: 16,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lightGreen),
            ),
            const SizedBox(width: 5),
            const Text('шерсть',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 16,
              width: 16,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lightBlue),
            ),
            const SizedBox(width: 5),
            const Text('вискоза',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
          ],
        ),
      ],
    );
  }
}
