// ไฟล์: models/foodmenu.dart
import 'package:flutter/material.dart';

enum Foodpic {
  menu1(namefood: "สุกี้", image: "assets/images/1.png"),
  menu2(namefood: "สลัดรวม", image: "assets/images/2.png"),
  menu3(namefood: "สเต็กหมู", image: "assets/images/3.png"),
  menu4(namefood: "สเต็กเนื้อ", image: "assets/images/4.png"),
  menu5(namefood: "แฮมเบอร์เกอร์", image: "assets/images/5.png"),
  menu6(namefood: "พิซซ่า", image: "assets/images/6.png"),
  menu7(namefood: "ก๋วยเตี๋ยว", image: "assets/images/7.png");

  final String image;
  final String namefood;

  const Foodpic({required this.image, required this.namefood});
}

class FoodMenu {
  // 1. เพิ่ม imgPath กลับเข้ามาใน Constructor และต้องเป็น required
  FoodMenu({
    required this.type,
    required this.name,
    required this.price,
    required this.component,
    required this.imgPath, // <--- เพิ่มบรรทัดนี้กลับเข้ามา
    required this.foodpic,
    required this.color,
  });

  // Properties ของคลาส
  String type;
  String name;
  double price;
  String component;
  String imgPath; // <--- และประกาศตัวแปรนี้กลับเข้ามาด้วย
  Foodpic foodpic;
  Color color;
}

// 2. เพิ่มข้อมูล path ของรูปภาพกลับเข้าไปในแต่ละรายการของ List ให้ครบ
List<FoodMenu> menuItems = [
  FoodMenu(
    type: "Appetizer",
    name: "Spring Rolls",
    price: 5.99,
    foodpic: Foodpic.menu1,
    color: const Color.fromARGB(255, 186, 137, 59),
    component: "Vegetables, Rice Paper",
    imgPath: "assets/images/1.png", // <--- เพิ่มค่าของ imgPath กลับเข้ามา
  ),
  FoodMenu(
    type: "Main Course",
    name: "Grilled Chicken",
    price: 12.99,
    foodpic: Foodpic.menu2,
    component: "Chicken, Spices, Vegetables",
    color: const Color.fromARGB(255, 130, 255, 222),
    imgPath: "assets/images/2.png", // <--- เพิ่มค่าของ imgPath กลับเข้ามา
  ),
  FoodMenu(
    type: "Dessert",
    name: "Chocolate Cake",
    price: 4.99,
    foodpic: Foodpic.menu3,
    component: "Chocolate, Flour, Sugar",
    color: const Color.fromARGB(255, 255, 130, 205),
    imgPath: "assets/images/3.png", // <--- เพิ่มค่าของ imgPath กลับเข้ามา
  ),
  FoodMenu(
    type: "Appetizer",
    name: "Spring Rolls",
    price: 5.99,
    foodpic: Foodpic.menu4,
    color: const Color.fromARGB(255, 75, 221, 180),
    component: "Vegetables, Rice Paper",
    imgPath: "assets/images/4.png", // <--- เพิ่มค่าของ imgPath กลับเข้ามา
  ),
  FoodMenu(
    type: "Main Course",
    name: "Grilled Chicken",
    price: 12.99,
    foodpic: Foodpic.menu5,
    component: "Chicken, Spices, Vegetables",
    color: const Color.fromARGB(255, 239, 80, 93),
    imgPath: "assets/images/2.png", // <--- เพิ่มค่าของ imgPath กลับเข้ามา
  ),
  FoodMenu(
    type: "Dessert",
    name: "Chocolate Cake",
    price: 4.99,
    foodpic: Foodpic.menu6,
    component: "Chocolate, Flour, Sugar",
    color: const Color.fromARGB(255, 188, 241, 90),
    imgPath: "assets/images/6.png", // <--- เพิ่มค่าของ imgPath กลับเข้ามา
  ),
];
