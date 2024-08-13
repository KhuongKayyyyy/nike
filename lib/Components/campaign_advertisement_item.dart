import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nike/Models/advertisement.dart';
import 'package:nike/Views/advertisement_page.dart';

class CampaignAdvertisementItem extends StatelessWidget {
  Advertisement advertisement;
  CampaignAdvertisementItem({super.key, required this.advertisement});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
          context,
            MaterialPageRoute(builder: (context) => AdvertisementPage(advertisement: advertisement))
        );
      },
      child: SizedBox(
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
              imageUrl: advertisement.imgList.first,
              fit: BoxFit.cover,
              placeholder: (context, url) => const CircularProgressIndicator(), // Placeholder while loading
              errorWidget: (context, url, error) => const Icon(Icons.error), // Error widget
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
      ),
    );
  }
}
