import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "bone",
    price: 23,
    size: 12,
    description: 'its a bone',
    image: "assets/images/download.jpg",
    color:  Colors.white,
  ),
  Product(
    id: 1,
    title: "bone",
    price: 23,
    size: 12,
    description: 'its a bone',
    image: "assets/images/download (1).jpg",
    color: Colors.white,
  ),
  Product(
    id: 1,
    title: "bone",
    price: 23,
    size: 12,
    description: 'its a bone',
    image: "assets/images/download (2).jpg",
    color: Colors.white,
  ),
  Product(
    id: 1,
    title: "bone",
    price: 23,
    size: 12,
    description: 'its a bone',
    image: "assets/images/download (1).jpg",
    color: Colors.white,
  ),
  Product(
    id: 1,
    title: "bone",
    price: 23,
    size: 12,
    description: 'its a bone',
    image: "assets/images/download.jpg",
    color:  Colors.white,
  ),
  Product(
    id: 1,
    title: "bone",
    price: 23,
    size: 12,
    description: 'its a bone',
    image: "assets/images/download (1).jpg",
    color: Colors.white,
  ),
  Product(
    id: 1,
    title: "bone",
    price: 23,
    size: 12,
    description: 'its a bone',
    image: "assets/images/download (2).jpg",
    color: Colors.white,
  ),
  Product(
    id: 1,
    title: "bone",
    price: 23,
    size: 12,
    description: 'its a bone',
    image: "assets/images/download (1).jpg",
    color: Colors.white,
  ),
];
