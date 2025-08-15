// screen/addform.dart

import 'package:flutter/material.dart';
import 'package:mobilelab2cet121/models/foodmenu.dart';

enum FoodType {
  appetizer("Appetizer"),
  mainCourse("Main Course"),
  dessert("Dessert");

  final String ty;
  const FoodType(this.ty);
}

class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  final _formKey = GlobalKey<FormState>();

  String _name = '';
  String _component = '';
  int _price = 0;
  FoodType _foodType = FoodType.appetizer; // ค่าตั้งต้น
  Foodpic _foodpic = Foodpic.menu1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Data"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        physics: const BouncingScrollPhysics(),

        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                maxLength: 20,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  label: Text("Name of food", style: TextStyle(fontSize: 20)),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a name of food";
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value!;
                },
              ),

              TextFormField(
                maxLength: 20,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  label: Text("Part of food", style: TextStyle(fontSize: 20)),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a part of food";
                  }
                  return null;
                },
                onSaved: (value) {
                  _component = value!;
                },
              ),

              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  label: Text("Price", style: TextStyle(fontSize: 20)),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a price";
                  }
                  if (int.tryParse(value) == null) {
                    return "Price must be a number";
                  }
                  return null;
                },
                onSaved: (value) {
                  _price = int.parse(value!);
                },
              ),

              const SizedBox(height: 20),

              DropdownButtonFormField<FoodType>(
                value: _foodType,
                decoration: const InputDecoration(
                  label: Text("Type of food", style: TextStyle(fontSize: 20)),
                ),
                items:
                    FoodType.values.map((key) {
                      return DropdownMenuItem(value: key, child: Text(key.ty));
                    }).toList(),
                onChanged: (value) {
                  setState(() {
                    _foodType = value!;
                  });
                },
              ),
              const SizedBox(height: 20),

              DropdownButtonFormField<Foodpic>(
                value: _foodpic,
                decoration: const InputDecoration(
                  label: Text("take image", style: TextStyle(fontSize: 20)),
                ),
                items:
                    Foodpic.values.map((pic) {
                      return DropdownMenuItem(
                        value: pic,
                        child: Row(
                          children: [
                            Image.asset(
                              pic.image,
                              width: 40,
                              height: 40,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(width: 10),
                            Text(pic.namefood),
                          ],
                        ),
                      );
                    }).toList(),
                onChanged: (value) {
                  setState(() {
                    _foodpic = value!;
                  });
                },
              ),

              const SizedBox(height: 20),

              FilledButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // เพิ่มข้อมูลลง list menuItems
                    menuItems.add(
                      FoodMenu(
                        type: _foodType.ty,
                        name: _name,
                        price: _price.toDouble(),
                        component: _component,
                        foodpic: _foodpic,
                        imgPath: "assets/images/1.png",
                        color: Colors.amber,
                      ),
                    );
                    _formKey.currentState!.reset(); // reset text fields
                    setState(() {
                      _foodType = FoodType.appetizer; // reset dropdown
                      _foodpic = Foodpic.menu1;
                    });

                    Navigator.pop(context);

                    debugPrint("Added food: $_name");
                  }
                },
                style: FilledButton.styleFrom(backgroundColor: Colors.blue),
                child: const Text("Save", style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
