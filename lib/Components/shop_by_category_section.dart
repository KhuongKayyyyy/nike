import 'package:flutter/material.dart';
import 'package:nike/Components/product_by_category_item.dart';

import '../Data/fake_data.dart';
import '../Models/category.dart';
class ShopByCategorySection extends StatelessWidget{
  const ShopByCategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
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
                  padding: const EdgeInsets.only(right: 20),
                  child: ProductByCategoryItem(category: category, onPressed: () {  },),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}