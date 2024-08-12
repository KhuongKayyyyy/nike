import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nike/Data/fake_data.dart';

class ImageAd extends StatelessWidget {
  String imageURL;
  ImageAd({required this.imageURL});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 12,
            color: const Color(0xFFF3EBDC),
          ),
          Container(
            height: 4,
            color: const Color(0xFFEBC369),
          ),
          CachedNetworkImage(
            imageUrl: FakeData.imageAd.first,
            fit: BoxFit.cover,
            placeholder: (context, url) => CircularProgressIndicator(), // Placeholder while loading
            errorWidget: (context, url, error) => Icon(Icons.error), // Error widget
          ),
          Container(
            height: 4,
            color: const Color(0xFFEBC369),
          ),
          Container(
            height: 12,
            color: const Color(0xFFF3EBDC),
          ),
        ],
      ),
    );
  }
}
