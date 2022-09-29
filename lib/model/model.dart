import 'package:flutter/material.dart';

class Items {
  final int id;
  final String name;
  final String desc;
  final String color;
  final String image;
  final num price;

  Items(
      {required this.color,
      required this.desc,
      required this.id,
      required this.image,
      required this.name,
      required this.price});
}

class CatalogModel {
  static final items = [
    Items(
        color: "#aebfbf",
        desc: "This is new iPhone 14 ",
        id: 1,
        image:
            "https://imageio.forbes.com/specials-images/imageserve/627fa3b6a736222d2161069c/Apple--iPhone-14--iPhone-14-Pro--iPhone-14-Max--iPhone-14-Pro-Max--new-iPhone-/0x0.jpg?format=jpg&crop=1835,1375,x402,y49,safe&width=960",
        name: "iPhone 14",
        price: 999)
  ];
}
