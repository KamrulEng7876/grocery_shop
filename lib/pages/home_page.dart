import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop/component/grocery_item_tile.dart';
import 'package:grocery_shop/model/cart_model.dart';
import 'package:grocery_shop/pages/cart_page_screen.dart';
import 'package:provider/provider.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Text('grocery Item'),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.tealAccent,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>CartPageScreen(),
            ),
          );
        },
        child: Icon(Icons.shopping_cart),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(),
              SizedBox(
                height: 32,
              ),
              Text(
                'Let,s order fresh item for you ',
                style: GoogleFonts.notoSerif(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Divider(
                thickness: 4,
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Fresh Items',
                  style: GoogleFonts.notoSerif(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(child: Consumer<CartModel>(
                builder: (context, value, child) {
                  return GridView.builder(
                    itemCount: value.shopItem.length,
                    padding: EdgeInsets.all(12),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: 1 / 1.25),
                    itemBuilder: (context, index) {
                      return GroceryItemTile(
                        itemName: value.shopItem[index][0],
                        itemPrice: value.shopItem[index][1],
                        imagePath: value.shopItem[index][2],
                        color: value.shopItem[index][3],
                        onPressed: (){
                          Provider.of<CartModel>(context,listen: false).addItemToCart(index);
                        },
                      );
                    },
                  );
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
