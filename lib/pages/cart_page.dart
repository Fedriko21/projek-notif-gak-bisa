// pages/cart_page.dart
import 'package:flutter/material.dart';
import '../models/cart.dart';
import '../models/product.dart';

class CartPage extends StatefulWidget {
  final CartModel cartModel;

  CartPage({required this.cartModel});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keranjang Belanja'),
        backgroundColor: Colors.brown[800],
      ),
      body: widget.cartModel.products.isEmpty
          ? Center(child: Text('Keranjang Anda kosong'))
          : ListView.builder(
              itemCount: widget.cartModel.products.length,
              itemBuilder: (context, index) {
                final product = widget.cartModel.products[index];
                return ListTile(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  leading: Image.network(product.image, width: 50, height: 50),
                  title: Text(product.name),
                  subtitle: Text('Rp ${product.price.toStringAsFixed(0)}'),
                  trailing: IconButton(
                    icon: Icon(Icons.remove_circle, color: Colors.red),
                    onPressed: () {
                      setState(() {
                        widget.cartModel.removeProduct(product);
                      });
                    },
                  ),
                );
              },
            ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            // Logika checkout bisa ditambahkan di sini
            showDialog(
              context: context,
              builder: (_) => AlertDialog(
                title: Text('Total Harga'),
                content: Text(
                  'Rp ${widget.cartModel.totalPrice.toStringAsFixed(0)}',
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Tutup'),
                  ),
                ],
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor:
                Colors.brown[800], // Ganti primary dengan backgroundColor
          ),
          child: Text(
            'Total: Rp ${widget.cartModel.totalPrice.toStringAsFixed(0)}',
          ),
        ),
      ),
    );
  }
}
