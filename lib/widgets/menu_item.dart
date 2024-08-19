import 'package:flutter/material.dart'; // imports material design widgets and properities

// widget represents a menu item (Dishes - Pizza... etc)
class MenuItem extends StatelessWidget {

  final String itemName;
  final Color color;
  const MenuItem({super.key, required this.itemName, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 64,
      height: 33,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: color,
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            offset: Offset(0, 2),
            blurRadius: 2
          )
        ]
      ),
      child: Text(
        itemName,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w300
        ),
      )
    );
  }
}