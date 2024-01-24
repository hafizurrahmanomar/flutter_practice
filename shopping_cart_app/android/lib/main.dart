import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Shopping App'),
        ),
        body: ShoppingCartScreen(),
      ),
    );
  }
}

class ShoppingCartScreen extends StatefulWidget {
  @override
  _ShoppingCartScreenState createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  int itemCount_1 = 0;
  int itemCount_2 = 0;
  int itemCount_3 = 0;
  double unitPrice_1 = 51.0;
  double unitPrice_2 = 30.0;
  double unitPrice_3 = 43.0;
  double totalAmount_1 = 0.0;
  double totalAmount_2 = 0.0;
  double totalAmount_3 = 0.0;
  double totalAmount = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "MY Bag",
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.w900),
          ),
          Column(
            children: [
              const Text(
                "Pullover",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(
                    "https://e7.pngegg.com/pngimages/3/819/png-clipart-printed-t-shirt-polo-shirt-clothing-t-shirt-tshirt-fashion-thumbnail.png",
                    height: 40,
                    width: 40,
                  ),
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      setState(() {
                        if (itemCount_1 > 1) {
                          itemCount_1--;
                          updateTotalAmount();
                        }
                      });
                    },
                  ),
                  Text('Item Count: $itemCount_1'),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        itemCount_1++;
                        updateTotalAmount();

                        if (itemCount_1 == 5) {
                          showAddToCartDialog();
                        }
                      });
                    },
                  ),
                  Text('\$${totalAmount_1.toStringAsFixed(2)}'),
                ],
              ),
              const Text(
                "T-Shirt",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(
                    "https://pngimg.com/d/tshirt_PNG5454.png",
                    height: 40,
                    width: 40,
                  ),
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      setState(() {
                        if (itemCount_2 > 1) {
                          itemCount_2--;
                          updateTotalAmount();
                        }
                      });
                    },
                  ),
                  Text('Item Count: $itemCount_2'),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        itemCount_2++;
                        updateTotalAmount();

                        if (itemCount_2 == 5) {
                          showAddToCartDialog();
                        }
                      });
                    },
                  ),
                  Text('\$${totalAmount_2.toStringAsFixed(2)}'),
                ],
              ),
              const Text(
                "Sport Dress",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(
                    "https://w7.pngwing.com/pngs/451/259/png-transparent-t-shirt-sportswear-clothing-casual-sports-wear-free-tshirt-angle-white.png",
                    height: 40,
                    width: 40,
                  ),
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      setState(() {
                        if (itemCount_3 > 1) {
                          itemCount_3--;
                          updateTotalAmount();
                        }
                      });
                    },
                  ),
                  Text('Item Count: $itemCount_3'),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        itemCount_3++;
                        updateTotalAmount();

                        if (itemCount_3 == 5) {
                          showAddToCartDialog();
                        }
                      });
                    },
                  ),
                  Text('\$${totalAmount_3.toStringAsFixed(2)}'),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          // Text('Unit Price: \$${unitPrice.toStringAsFixed(2)}'),
          // Text('Total Amount: \$${totalAmount.toStringAsFixed(2)}'),
          const SizedBox(height: 16.0),

          Text("Total Amount :\$${totalAmount.toStringAsFixed(2)} "),
          const SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              showCheckoutSnackbar();
            },
            child: const Text('CHECK OUT'),
          ),
        ],
      ),
    );
  }

  void updateTotalAmount() {
    totalAmount_1 = itemCount_1 * unitPrice_1;
    totalAmount_2 = itemCount_2 * unitPrice_2;
    totalAmount_3 = itemCount_3 * unitPrice_3;
    totalAmount = totalAmount_1 + totalAmount_2 + totalAmount_3;
  }

  void showAddToCartDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Item Added to Cart'),
          content: const Text('You have added 5 items to your bag!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void showCheckoutSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Congratulations! Check out successful.'),
      ),
    );
  }
}
