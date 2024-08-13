import 'package:flutter/material.dart';
import 'package:nike/Components/product_item.dart';
import 'package:nike/Data/fake_data.dart';
import 'package:nike/Models/product.dart';

class ShopByTypeSection extends StatelessWidget {
  final String shoppingType;
  final bool isHomepageShowed;

  const ShopByTypeSection({required this.shoppingType,required this.isHomepageShowed, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!isHomepageShowed)
            Row(
              children: [
                Text(
                  shoppingType,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'See all',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          if (shoppingType == "New Arrivals")
            SizedBox(
            height: 320,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: FakeData.shoeList.length,
              itemBuilder: (context, index) {
                Product product = FakeData.shoeList.elementAt(index);
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: ProductItem(product: product),
                );
              },
            ),
          ),
          if (shoppingType == "Shop by Collection")
            SizedBox(
              height: 320,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                itemCount: FakeData.topList.length,
                itemBuilder: (context, index) {
                  Product product = FakeData.topList.elementAt(index);
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: ProductItem(product: product),
                  );
                },
              ),
            ),
          if (shoppingType == "Recommend for You")
            SizedBox(
              height: 320,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                itemCount: FakeData.shoeList.length,
                itemBuilder: (context, index) {
                  Product product = FakeData.shoeList.elementAt(index);
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: ProductItem(product: product),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
