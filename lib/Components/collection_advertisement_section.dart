import 'package:flutter/material.dart';

import '../Data/fake_data.dart';
import '../Models/advertisement.dart';
import 'collection_advertisement_item.dart';
class CollectionAdvertisementSection extends StatelessWidget{
  const CollectionAdvertisementSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: FakeData.collectionAds.length,
      itemBuilder: (context, index) {
        Advertisement advertisement = FakeData.collectionAds.elementAt(index);
        return Padding(
          padding:const EdgeInsets.only(bottom: 10),
          child: CollectionAdvertisementItem(
            advertisement: advertisement,
            onPressed: () {},
          ),
        );
      },
    );
  }
}