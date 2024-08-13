import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nike/Models/interest.dart';

class InterestItem extends StatelessWidget {
  final Interest interest;

  InterestItem({required this.interest});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(
                imageUrl: interest.imageURl,
                fit: BoxFit.cover,
                height: 250,
                width: 250,
              ),
            )
          ),
          Center(
            child: Text(
              interest.name,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
