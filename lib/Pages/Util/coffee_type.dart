import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
  //const CoffeeType({super.key});
  final String coffeeType;
  final bool isSelected;
  final VoidCallback onTap;

  CoffeeType(
      {required this.coffeeType,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 25,
        ),
        child: Text(
          coffeeType,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.orange : Colors.grey,
          ),
        ),
      ),
    );
  }
}