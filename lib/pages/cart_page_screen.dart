// import 'package:flutter/material.dart';
// import 'package:grocery_shop/model/cart_model.dart';
// import 'package:provider/provider.dart';
//
// class CartPageScreen extends StatefulWidget {
//   // final color;
//   const CartPageScreen({
//     super.key,
//     // required this.color,
//   });
//
//   @override
//   State<CartPageScreen> createState() => _CartPageScreenState();
// }
//
// class _CartPageScreenState extends State<CartPageScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.tealAccent,
//         title: Text(
//           ' My Shopping Cart',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//       ),
//       body: Consumer<CartModel>(
//         builder: (context, value, child) {
//           return Column(
//             children: [
//               // list of cart item
//               Expanded(
//                 child: ListView.builder(
//                   itemCount: value.cartItem.length,
//                   padding: EdgeInsets.all(8),
//                   itemBuilder: (context, index) {
//                     return Padding(
//                       padding: const EdgeInsets.all(12.0),
//                       child: Container(
//                         // color: value.shopItem[index][3],
//                         decoration: BoxDecoration(
//                             // color: color[100]
//                             color: Colors.grey[200],
//                             borderRadius: BorderRadius.circular(8)),
//                         child: ListTile(
//                           leading: Image.asset(
//                             value.cartItem[index][2],
//                             height: 40,
//                           ),
//                           title: Text(value.cartItem[index][0]),
//                           subtitle: Text(
//                             '\$' + value.cartItem[index][1],
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           trailing: IconButton(
//                             onPressed: () =>
//                                 Provider.of<CartModel>(context, listen: false)
//                                     .removeItemFromCart(index),
//                             icon: Icon(Icons.delete_forever),
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//
//               //   total price and pay button
//               Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Container(
//                   // padding: EdgeInsets.all(24),
//                   decoration: BoxDecoration(
//                     color: Colors.teal,
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   padding: EdgeInsets.all(24),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text('Total Price :  \$ ' + value.calculateTotal()),
//                           // Text('Total Price :  \$' + value.calculateTotal()),
//                         ],
//                       ),
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         // child: Text(
//                         //   'Pay now',
//                         //   style: TextStyle(
//                         //       fontWeight: FontWeight.bold,
//                         //       fontSize: 18,
//                         //       color: Colors.white),
//                         // ),
//                         child: TextButton(
//                           onPressed: () {
//                             _showAlertDialog(context);
//                           },
//                           child: Text(
//                             'Pay now',
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 18,
//                                 color: Colors.white),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           );
//         },
//       ),
//     );
//   }
//
//   Future<dynamic> _showAlertDialog(BuildContext context) {
//     return showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text("Alert"),
//           content: Text("This is a simple alert dialog."),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop(); // Close the dialog
//               },
//               child: Text("OK"),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }

//
// import 'package:flutter/material.dart';
// import 'package:grocery_shop/model/cart_model.dart';
// import 'package:provider/provider.dart';
//
// class CartPageScreen extends StatefulWidget {
//   const CartPageScreen({super.key});
//
//   @override
//   State<CartPageScreen> createState() => _CartPageScreenState();
// }
//
// class _CartPageScreenState extends State<CartPageScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.tealAccent,
//         title: const Text(
//           'My Shopping Cart',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//       ),
//       body: Consumer<CartModel>(
//         builder: (context, value, child) {
//           return Column(
//             children: [
//               // Show message if cart is empty
//               value.cartItem.isEmpty
//                   ? Expanded(
//                 child: Center(
//                   child: Text(
//                     "Your cart is empty!",
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               )
//                   : Expanded(
//                 child: ListView.builder(
//                   itemCount: value.cartItem.length,
//                   padding: const EdgeInsets.all(8),
//                   itemBuilder: (context, index) {
//                     return Padding(
//                       padding: const EdgeInsets.all(12.0),
//                       child: Container(
//                         decoration: BoxDecoration(
//                           color: Colors.grey[200],
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         child: ListTile(
//                           leading: Image.asset(
//                             value.cartItem[index][2],
//                             height: 40,
//                           ),
//                           title: Text(value.cartItem[index][0]),
//                           subtitle: Text(
//                             '\$${value.cartItem[index][1]}',
//                             style: const TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           trailing: IconButton(
//                             onPressed: () {
//                               Provider.of<CartModel>(context, listen: false)
//                                   .removeItemFromCart(index);
//                             },
//                             icon: const Icon(Icons.delete_forever, color: Colors.red),
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//
//               // Total price and pay button
//               Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: Colors.teal,
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   padding: const EdgeInsets.all(24),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Total Price: \$${value.calculateTotal()}',
//                             style: const TextStyle(
//                                 fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
//                           ),
//                         ],
//                       ),
//                       TextButton(
//                         onPressed: () {
//                           _showAlertDialog(context, value.calculateTotal());
//                         },
//                         child: const Text(
//                           'Pay Now',
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
//
//   // Updated Alert Dialog
//   Future<dynamic> _showAlertDialog(BuildContext context, String totalAmount) {
//     return showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text("Confirm Payment"),
//           content: Text("Do you want to proceed with the payment of \$${totalAmount}?"),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop(); // Close the dialog
//               },
//               child: const Text("Cancel"),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 // Payment logic here
//                 Navigator.of(context).pop();
//               },
//               child: const Text("Proceed"),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
//


//
//
// import 'package:flutter/material.dart';
// import 'package:grocery_shop/model/cart_model.dart';
// import 'package:provider/provider.dart';
//
// class CartPageScreen extends StatefulWidget {
//   const CartPageScreen({super.key});
//
//   @override
//   State<CartPageScreen> createState() => _CartPageScreenState();
// }
//
// class _CartPageScreenState extends State<CartPageScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.tealAccent,
//         title: const Text(
//           'My Shopping Cart',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//       ),
//       body: Consumer<CartModel>(
//         builder: (context, value, child) {
//           return Column(
//             children: [
//               // Show message if cart is empty
//               value.cartItem.isEmpty
//                   ? Expanded(
//                 child: Center(
//                   child: Text(
//                     "Your cart is empty!",
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               )
//                   : Expanded(
//                 child: ListView.builder(
//                   itemCount: value.cartItem.length,
//                   padding: const EdgeInsets.all(8),
//                   itemBuilder: (context, index) {
//                     return Padding(
//                       padding: const EdgeInsets.all(12.0),
//                       child: Container(
//                         decoration: BoxDecoration(
//                           color: Colors.grey[200],
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         child: ListTile(
//                           leading: Image.asset(
//                             value.cartItem[index][2],
//                             height: 40,
//                           ),
//                           title: Text(value.cartItem[index][0]),
//                           subtitle: Text(
//                             '\$${value.cartItem[index][1]}',
//                             style: const TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           trailing: IconButton(
//                             onPressed: () {
//                               Provider.of<CartModel>(context, listen: false)
//                                   .removeItemFromCart(index);
//                               _showSnackbar(context, "Item removed from cart.");
//                             },
//                             icon: const Icon(Icons.delete_forever, color: Colors.red),
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//
//               // Total price and pay button
//               Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: Colors.teal,
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   padding: const EdgeInsets.all(24),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Total Price: \$${value.calculateTotal()}',
//                             style: const TextStyle(
//                                 fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
//                           ),
//                         ],
//                       ),
//                       TextButton(
//                         onPressed: () {
//                           _showAlertDialog(context, value.calculateTotal());
//                         },
//                         child: const Text(
//                           'Pay Now',
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
//
//   // Alert Dialog with Payment Confirmation
//   Future<dynamic> _showAlertDialog(BuildContext context, String totalAmount) {
//     return showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text("Confirm Payment"),
//           content: Text("Do you want to proceed with the payment of \$${totalAmount}?"),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop(); // Close the dialog
//               },
//               child: const Text("Cancel"),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//                 _showSnackbar(context, "Payment Successful! ✅");
//               },
//               child: const Text("Proceed"),
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   // Snackbar function
//   void _showSnackbar(BuildContext context, String message) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text(message),
//         behavior: SnackBarBehavior.floating,
//         duration: Duration(seconds: 2),
//         backgroundColor: Colors.grey,
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:grocery_shop/model/cart_model.dart';
import 'package:provider/provider.dart';

class CartPageScreen extends StatefulWidget {
  const CartPageScreen({super.key});

  @override
  State<CartPageScreen> createState() => _CartPageScreenState();
}

class _CartPageScreenState extends State<CartPageScreen> {
  Set<int> _selectedItems = {}; // To track selected items

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        title: const Text(
          'My Shopping Cart',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Consumer<CartModel>(
        builder: (context, value, child) {
          return Column(
            children: [
              // Show message if cart is empty
              value.cartItem.isEmpty
                  ? Expanded(
                child: Center(
                  child: Text(
                    "Your cart is empty!",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              )
                  : Expanded(
                child: ListView.builder(

                  itemCount: value.cartItem.length,
                  padding: const EdgeInsets.all(8),
                  itemBuilder: (context, index) {
                    bool isSelected = _selectedItems.contains(index);
                    var itemColor = value.cartItem[index][3] as Color; // Get stored color

                    return Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            if (isSelected) {
                              _selectedItems.remove(index);
                            } else {
                              _selectedItems.add(index);
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(

                            // color: isSelected ? itemColor.withOpacity(0.5) : itemColor,

                            color: Colors.grey[200],

                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ListTile(

                            // leading: Image.asset(
                            //   value.cartItem[index][2],
                            //   height: 40,
                            // ),

                            // seriyal number + image

                            leading: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.teal, // Serial number background
                                  radius: 12, // Smaller circle size
                                  child: Text(
                                    (index + 1).toString(), // Serial number
                                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
                                  ),
                                ),
                                const SizedBox(width: 8), // Space between number and image
                                Image.asset(
                                  value.cartItem[index][2], // Image path from list
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                            title: Text(value.cartItem[index][0]),
                            subtitle: Text(
                              '\$${value.cartItem[index][1]}',
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            trailing: IconButton(
                              onPressed: () {
                                Provider.of<CartModel>(context, listen: false)
                                    .removeItemFromCart(index);
                                _selectedItems.remove(index); // Remove highlight
                                _showSnackbar(context, "Item removed from cart.");
                              },
                              icon: const Icon(Icons.delete_forever, color: Colors.red),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              // Total price and pay button
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.all(24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total Price: \$${value.calculateTotal()}',
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          _showAlertDialog(context, value.calculateTotal());
                        },
                        child: const Text(
                          'Pay Now',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  // Alert Dialog with Payment Confirmation
  Future<dynamic> _showAlertDialog(BuildContext context, String totalAmount) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Confirm Payment"),
          content: Text("Do you want to proceed with the payment of \$${totalAmount}?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                _showSnackbar(context, "Payment Successful! ✅");
              },
              child: const Text("Proceed"),
            ),
          ],
        );
      },
    );
  }

  // Snackbar function
  void _showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.floating,
        duration: Duration(seconds: 2),
        backgroundColor: Colors.grey,
      ),
    );
  }
}
