import 'package:ecommerce/reusable_components/card.dart';
import 'package:ecommerce/reusable_components/reusable_appBars.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> products = [
    {
      "id": 1,
      "name": "Nike Air Max",
      "image": "https://cdn.dummyjson.com/product-images/mens-shoes/nike-air-jordan-1/1.webp",
      "price": 12000,
      "coins": 20,
    },
    {
      "id": 2,
      "name": "Nike Baseball Cleats",
      "image": "https://cdn.dummyjson.com/product-images/mens-shoes/nike-baseball-cleats/1.webp",
      "price": 13500,
      "coins": 18,
    },
    {
      "id": 3,
      "name": "Nike Air Jordan",
      "image": "https://cdn.dummyjson.com/product-images/mens-shoes/nike-air-jordan-1/2.webp",
      "price": 15000,
      "coins": 19,
    },
    {
      "id": 4,
      "name": "Puma Future Rider",
      "image": "https://cdn.dummyjson.com/product-images/mens-shoes/puma-future-rider-trainers/1.webp",
      "price": 14000,
      "coins": 15,
    },
    {
      "id": 5,
      "name": "Sports Sneakers",
      "image": "https://cdn.dummyjson.com/product-images/mens-shoes/sports-sneakers-off-white-red/1.webp",
      "price": 12500,
      "coins": 17,
    },
    {
      "id": 6,
      "name": "Nike Baseball Shoes",
      "image": "https://cdn.dummyjson.com/product-images/mens-shoes/nike-baseball-cleats/2.webp",
      "price": 13000,
      "coins": 16,
    },
    {
      "id": 7,
      "name": "Air Jordan Classic",
      "image": "https://cdn.dummyjson.com/product-images/mens-shoes/nike-air-jordan-1/3.webp",
      "price": 16000,
      "coins": 20,
    },
    {
      "id": 8,
      "name": "Puma Future Rider",
      "image": "https://cdn.dummyjson.com/product-images/mens-shoes/puma-future-rider-trainers/2.webp",
      "price": 14500,
      "coins": 14,
    },
    {
      "id": 9,
      "name": "Off White Red Sneakers",
      "image": "https://cdn.dummyjson.com/product-images/mens-shoes/sports-sneakers-off-white-red/2.webp",
      "price": 15500,
      "coins": 18,
    },
    {
      "id": 10,
      "name": "Nike Baseball Runner",
      "image": "https://cdn.dummyjson.com/product-images/mens-shoes/nike-baseball-cleats/3.webp",
      "price": 12800,
      "coins": 13,
    },
    {
      "id": 11,
      "name": "Jordan Street Shoes",
      "image": "https://cdn.dummyjson.com/product-images/mens-shoes/nike-air-jordan-1/4.webp",
      "price": 17000,
      "coins": 20,
    },
    {
      "id": 12,
      "name": "Puma Rider Black",
      "image": "https://cdn.dummyjson.com/product-images/mens-shoes/puma-future-rider-trainers/3.webp",
      "price": 14200,
      "coins": 15,
    },
    {
      "id": 13,
      "name": "Sports Sneakers Red",
      "image": "https://cdn.dummyjson.com/product-images/mens-shoes/sports-sneakers-off-white-red/3.webp",
      "price": 13500,
      "coins": 16,
    },
    {
      "id": 14,
      "name": "Nike Cleats Pro",
      "image": "https://cdn.dummyjson.com/product-images/mens-shoes/nike-baseball-cleats/4.webp",
      "price": 14800,
      "coins": 19,
    },
    {
      "id": 15,
      "name": "Jordan High Top",
      "image": "https://cdn.dummyjson.com/product-images/mens-shoes/nike-air-jordan-1/5.webp",
      "price": 18000,
      "coins": 20,
    },
    {
      "id": 16,
      "name": "Puma Future Rider ",
      "image": "https://cdn.dummyjson.com/product-images/mens-shoes/puma-future-rider-trainers/4.webp",
      "price": 15000,
      "coins": 17,
    },
    {
      "id": 17,
      "name": "Off White Sports",
      "image": "https://cdn.dummyjson.com/product-images/mens-shoes/sports-sneakers-off-white-red/4.webp",
      "price": 13800,
      "coins": 14,
    },
    {
      "id": 18,
      "name": "Nike Air Runner",
      "image": "https://cdn.dummyjson.com/product-images/mens-shoes/nike-air-jordan-1/6.webp",
      "price": 16500,
      "coins": 18,
    },
    {
      "id": 19,
      "name": "Puma Casual Trainer",
      "image": "https://cdn.dummyjson.com/product-images/mens-shoes/puma-future-rider-trainers/5.webp",
      "price": 13200,
      "coins": 12,
    },
    {
      "id": 20,
      "name": "Red White Sneakers",
      "image": "https://cdn.dummyjson.com/product-images/mens-shoes/sports-sneakers-off-white-red/5.webp",
      "price": 15500,
      "coins": 19,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MYAPPBAR(),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 3,
        mainAxisSpacing: 10,
        children: products.map((product) {
          return ProductCard(
            image: product['image'] as String,
            name: product['name'] as String,
            price: product['price'] as int,
            coins: product['coins'] as int,
          );
        }).toList(),
      ),
    );
  }
}
