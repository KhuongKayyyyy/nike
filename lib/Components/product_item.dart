import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nike/Data/fake_data.dart';
import 'package:nike/Models/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  ProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    // Check if the images list is not empty
    final imageUrl = product.images.isNotEmpty ? product.images.first : '';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[200],
          ),
          height: 255,
          child: Center(
            child: SizedBox(
              height: 150,
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                fit: BoxFit.cover,
                placeholder: (context, url) => const Center(child: CircularProgressIndicator()), // Placeholder while loading
                errorWidget: (context, url, error) => const Center(child: Icon(Icons.error)), // Error widget
              ),
            )
          ),
        ),
        const SizedBox(height: 13),
        Text(
          product.name,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 7),
        Text(
          "US\$ ${product.price}",
          style: TextStyle(fontSize: 14, color: Colors.grey[700], fontWeight: FontWeight.bold),
        ),
        // You can add more widgets here to display product details
      ],
    );
  }
}
