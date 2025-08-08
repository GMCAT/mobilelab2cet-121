// ไฟล์: screen/item.dart

import 'package:flutter/material.dart';
import 'package:mobilelab2cet121/models/foodmenu.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: menuItems.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: menuItems[index].color,
            // color: Colors.blueAccent[100],
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              // 1. **ห่อ Column ด้วย Expanded**
              // Expanded จะบอกให้ Column ขยายความกว้างให้เต็มพื้นที่ที่เหลือใน Row
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      menuItems[index].name,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "ประเภทอาหาร : ${menuItems[index].type}",
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "ราคา : ${menuItems[index].price} บาท",
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              Image.asset(
                menuItems[index].foodpic.image,

                width: 100, // กำหนดความกว้าง
                height: 100, // กำหนดความสูง
                fit: BoxFit.cover, // ปรับการย่อ/ขยายให้ครอบพื้นที่
              ),
            ],
          ),
        );
      },
    );
  }
}
