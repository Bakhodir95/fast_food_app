import 'package:fast_food_app/domain/entities/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OrderScreen extends StatefulWidget {
  final List<CartItem> cartItems;

  const OrderScreen({super.key, required this.cartItems});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  void _increment(CartItem item) {
    setState(() {
      item.quantity++;
    });
  }

  void _decrement(CartItem item) {
    if (item.quantity > 1) {
      setState(() {
        item.quantity--;
      });
    } else {
      // Optionally remove the item if quantity is 1
      setState(() {
        widget.cartItems.remove(item);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Menu'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.cartItems.length,
              itemBuilder: (context, index) {
                final data = widget.cartItems[index];
                return ListTile(
                  leading: Image.asset(data.image), // Show the image
                  title: Text(data.text),
                  subtitle: const Text("24000"), // Price could be dynamic
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () => _decrement(data),
                        icon: const Icon(
                          Icons.remove,
                          size: 18,
                        ),
                      ),
                      const Gap(21),
                      Text(
                        data.quantity.toString(),
                        style: const TextStyle(fontSize: 18),
                      ),
                      const Gap(21),
                      IconButton(
                        onPressed: () => _increment(data),
                        icon: const Icon(
                          Icons.add,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
