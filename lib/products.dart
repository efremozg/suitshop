import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int id, price, size;
  final Color? color;

  Product(
      {required this.image,
      required this.title,
      required this.description,
      required this.id,
      required this.price,
      required this.size,
      required this.color});
}

List<Product> products = [
  Product(
      image: 'images/suit4.jpeg',
      title: 'Костюм Тройка',
      description:
          'Костюм тройка – это классические брюки, пиджак и элегантный жилет. Все три позиции выполнены в одном силе и цветовой гамме, и естественно – из одной и той же ткани. Такие костюмы пользуются немалой популярностью среди мужчин, и в этом нет ничего удивительного.',
      id: 1,
      price: 9900,
      size: 16,
      color: Color.fromARGB(255, 32, 32, 32)),
  Product(
      image: 'images/suit5.jpeg',
      title: 'Костюм Тройка',
      description:
          'Костюм тройка – это классические брюки, пиджак и элегантный жилет. Все три позиции выполнены в одном силе и цветовой гамме, и естественно – из одной и той же ткани. Такие костюмы пользуются немалой популярностью среди мужчин, и в этом нет ничего удивительного.',
      id: 2,
      price: 9900,
      size: 16,
      color: Color.fromARGB(255, 32, 32, 32)),
  Product(
      image: 'images/suit1.jpeg',
      title: 'Костюм Тройка',
      description:
          'Костюм тройка – это классические брюки, пиджак и элегантный жилет. Все три позиции выполнены в одном силе и цветовой гамме, и естественно – из одной и той же ткани. Такие костюмы пользуются немалой популярностью среди мужчин, и в этом нет ничего удивительного.',
      id: 3,
      price: 9900,
      size: 16,
      color: Color.fromARGB(255, 32, 32, 32)),
  Product(
      image: 'images/suit2.jpeg',
      title: 'Костюм Тройка',
      description:
          'Костюм тройка – это классические брюки, пиджак и элегантный жилет. Все три позиции выполнены в одном силе и цветовой гамме, и естественно – из одной и той же ткани. Такие костюмы пользуются немалой популярностью среди мужчин, и в этом нет ничего удивительного.',
      id: 4,
      price: 9900,
      size: 16,
      color: Color.fromARGB(255, 32, 32, 32)),
  Product(
      image: 'images/suit3.jpeg',
      title: 'Костюм Тройка',
      description:
          'Костюм тройка – это классические брюки, пиджак и элегантный жилет. Все три позиции выполнены в одном силе и цветовой гамме, и естественно – из одной и той же ткани. Такие костюмы пользуются немалой популярностью среди мужчин, и в этом нет ничего удивительного.',
      id: 5,
      price: 9900,
      size: 16,
      color: Color.fromARGB(255, 32, 32, 32)),
  Product(
      image: 'images/suitpack1.jpeg',
      title: 'Набор',
      description:
          'Костюм тройка – это классические брюки, пиджак и элегантный жилет. Все три позиции выполнены в одном силе и цветовой гамме, и естественно – из одной и той же ткани. Такие костюмы пользуются немалой популярностью среди мужчин, и в этом нет ничего удивительного.',
      id: 6,
      price: 17700,
      size: 16,
      color: Color.fromARGB(255, 32, 32, 32)),
  Product(
      image: 'images/suit2.jpeg',
      title: 'Набор',
      description:
          'Костюм тройка – это классические брюки, пиджак и элегантный жилет. Все три позиции выполнены в одном силе и цветовой гамме, и естественно – из одной и той же ткани. Такие костюмы пользуются немалой популярностью среди мужчин, и в этом нет ничего удивительного.',
      id: 6,
      price: 17700,
      size: 16,
      color: Color.fromARGB(255, 32, 32, 32))
];
