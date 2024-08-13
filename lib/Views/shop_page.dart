import 'package:flutter/material.dart';
import 'package:nike/Components/collection_advertisement_item.dart';
import 'package:nike/Components/feature_button.dart';
import 'package:nike/Components/product_by_category_item.dart';
import 'package:nike/Data/fake_data.dart';
import 'package:nike/Models/advertisement.dart';

import '../Models/category.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  int selectedIndex = 0;

  void onFeatureSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Shop",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 30,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, size: 35),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //feature row
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 20,),
                FeatureButton(
                  feature: "Men",
                  selected: selectedIndex == 0,
                  callback: () => onFeatureSelected(0),
                ),
                const SizedBox(width: 30,),
                FeatureButton(
                  feature: "Women",
                  selected: selectedIndex == 1,
                  callback: () => onFeatureSelected(1),
                ),
                const SizedBox(width: 30,),
                FeatureButton(
                  feature: "Kids",
                  selected: selectedIndex == 2,
                  callback: () => onFeatureSelected(2),
                ),
              ],
            ),
            const Divider(),

          //  category section
            Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 30, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Must- Haves, Best Sellers & More",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 25,),
                  SizedBox(
                    height: 300,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: FakeData.specialCategories.length,
                      itemBuilder: (context, index){
                        Category category = FakeData.specialCategories.elementAt(index);
                        return Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: ProductByCategoryItem(category: category, onPressed: () {  },),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),

          //  collections advertisements
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: FakeData.collectionAds.length,
              itemBuilder: (context, index) {
                Advertisement advertisement = FakeData.collectionAds.elementAt(index);
                return Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: CollectionAdvertisementItem(
                    advertisement: advertisement,
                    onPressed: () {},
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
