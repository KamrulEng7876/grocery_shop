import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final color;
  void Function()? onPressed;

  GroceryItemTile({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: color[100], borderRadius: BorderRadius.circular(12)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //   image

              Image.asset(
                imagePath,
                height: 64,
              ),
              // SizedBox(width: 10,),
              // IconButton(onPressed: (){}, icon: Icons.accessibility_outlined)

              //   item  name

              Text(itemName),

              //   price +button

              // Row()
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: color,
                    // minimumSize: Size(5, 5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        bottomRight: Radius.circular(24),
                      ),
                    ),
                  ),
                  onPressed:onPressed,
                  child: Text(
                    '\$' + itemPrice,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ))
            ],
          )),
    );
  }
}
