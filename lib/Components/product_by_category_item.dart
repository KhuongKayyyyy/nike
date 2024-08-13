import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../Models/category.dart';

class ProductByCategoryItem extends StatelessWidget{
  Category category;
  VoidCallback onPressed;
  ProductByCategoryItem({super.key, required this.category, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        height: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 250,
              width: 300,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: CachedNetworkImage(
                  imageUrl: category.imageURL,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Text(
              category.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        )
      ),
    );
  }
}