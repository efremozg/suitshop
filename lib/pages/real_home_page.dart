import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_costumeshop/pages/item_info.dart';

class RealHomePage extends StatefulWidget {
  const RealHomePage({Key? key}) : super(key: key);

  @override
  State<RealHomePage> createState() => _RealHomePageState();
}

class _RealHomePageState extends State<RealHomePage> {
  PageController pageController = PageController();
  int pageCount = 3;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 4), (timer) {
      if (pageController.page! >= pageCount - 1) {
        pageController.animateToPage(0,
            duration: Duration(milliseconds: 2000),
            curve: Curves.fastLinearToSlowEaseIn);
      } else {
        pageController.nextPage(
            duration: Duration(milliseconds: 2000),
            curve: Curves.fastLinearToSlowEaseIn);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 243, 243),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CustomAppBar(),
                const SizedBox(height: 20),
                Container(
                  height: 250,
                  child: PageView(controller: pageController, children: const [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child:
                          NewProductCard(productImage: 'images/costume1.jpeg'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(2.0),
                      child:
                          NewProductCard(productImage: 'images/costume2.jpeg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child:
                          NewProductCard(productImage: 'images/costume3.jpeg'),
                    ),
                  ]),
                ),
                const SizedBox(height: 20),
                const CostumeScrollWidget(),
                const SizedBox(height: 20),
                const CostumeScrollWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          'MantownSPB',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class NewProductCard extends StatelessWidget {
  final String productImage;
  const NewProductCard({Key? key, required this.productImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: MediaQuery.of(context).size.width - 20,
      decoration: BoxDecoration(
        image:
            DecorationImage(image: AssetImage(productImage), fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
    );
  }
}

class CostumeScrollWidget extends StatelessWidget {
  const CostumeScrollWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: MediaQuery.of(context).size.width - 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 255, 255, 255),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(255, 199, 199, 199),
                  offset: Offset(0.5, 0.5),
                  blurRadius: 8,
                  blurStyle: BlurStyle.normal,
                  spreadRadius: 0.5)
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Костюмы Тройки',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Все костюмы всего за 9900 рубей!',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                      maxLines: 2,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  'images/suiticon.png',
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 20),
        Container(
          height: 70,
          width: MediaQuery.of(context).size.width - 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 255, 255, 255),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(255, 199, 199, 199),
                  offset: Offset(0.5, 0.5),
                  blurRadius: 8,
                  blurStyle: BlurStyle.normal,
                  spreadRadius: 0.5)
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Наборы',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Все наборы  за 17700 рубей!',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                      maxLines: 2,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  'images/boxicon.png',
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 20),
        Container(
          height: 70,
          width: MediaQuery.of(context).size.width - 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 255, 255, 255),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(255, 199, 199, 199),
                  offset: Offset(0.5, 0.5),
                  blurRadius: 8,
                  blurStyle: BlurStyle.normal,
                  spreadRadius: 0.5)
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  'Аксессуары',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Image.asset(
                  'images/tieicon.png',
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 20),
        Container(
          height: 70,
          width: MediaQuery.of(context).size.width - 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 0, 0, 0),
            boxShadow: const [
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(0.5, 0.5),
                  blurRadius: 1,
                  blurStyle: BlurStyle.normal,
                  spreadRadius: 0.5)
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  'Акции',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'images/discount.png',
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
