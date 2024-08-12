import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../Data/fake_data.dart';
import 'package:intl/intl.dart';
class WelcomeHeadingSection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: CachedNetworkImage(
                imageUrl: FakeData.avatarIllustration,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10,),
          const Text(
            "Discover",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 5,),
          Text(
            getFormattedDate(),
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey[500]!,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
  String getFormattedDate() {
    final now = DateTime.now();
    final formatter = DateFormat('EEEE, dd MMM');
    return formatter.format(now);
  }
}