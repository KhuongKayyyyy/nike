import 'package:flutter/material.dart';
import 'package:nike/Components/collection_advertisement_item.dart';
import 'package:nike/Components/collection_advertisement_section.dart';
import 'package:nike/Components/feature_button.dart';
import 'package:nike/Components/shop_by_interests.dart';
import 'package:nike/Components/shop_by_type_section.dart';
import 'package:nike/Components/product_by_category_item.dart';
import 'package:nike/Components/shop_by_category_section.dart';
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
            const ShopByCategorySection(),
          //new arrivals section
            const ShopByTypeSection(shoppingType: "New Arrivals",isHomepageShowed: false),
            const SizedBox(height: 20),
            const ShopByTypeSection(shoppingType: "Shop by Collection", isHomepageShowed: false),
            const SizedBox(height: 40),
            //  collections advertisements section
            const CollectionAdvertisementSection(),
            //shop by my interests section
            const ShopByInterests(),
            const SizedBox(height: 20),
            // recommendation section
            const ShopByTypeSection(shoppingType: "Recommend for You", isHomepageShowed: false),
            const SizedBox(height: 80,)
          ],
        ),
      ),
    );
  }
}
