import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  final String ItemName;
  final String ItemPrice;
  final String ImagePath;
  final color;
  void Function()? onPressed;

  GroceryItemTile(
      {Key? key,
      required this.ItemName,
      required this.ItemPrice,
      required this.ImagePath,
      this.color,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color[100],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              ImagePath,
              height: 50,
            ),
            Text(
              ItemName,
              style: TextStyle(fontSize: 20),
            ),
            MaterialButton(
              onPressed: onPressed,
              color: color[700],
              child: Text(
                '\$' + ItemPrice,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
