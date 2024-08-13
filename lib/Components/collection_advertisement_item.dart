import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nike/Models/advertisement.dart';

class CollectionAdvertisementItem extends StatelessWidget {
  final Advertisement advertisement;
  final VoidCallback onPressed;

  const CollectionAdvertisementItem({
    Key? key,
    required this.advertisement,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        height: 120,
        width: double.infinity,
        child: Stack(
          children: [
            CachedNetworkImage(
              imageUrl: advertisement.imgList.last,
              fit: BoxFit.cover,
              width: double.infinity, // Ensures the image takes full width
            ),
            Row(
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      advertisement.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  )
                ),
                Expanded(child: Container())
              ],
            )
          ],
        ),
      ),
    );
  }
}
