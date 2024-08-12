import 'package:flutter/material.dart';
import 'package:nike/Components/product_item.dart';
import 'package:nike/Data/fake_data.dart';
import 'package:nike/Models/product.dart';

class NewArrivalSection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "What's new",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 20,),
          Text(
            "The latest arrivals from Nike",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.grey[700]!,
              fontSize: 30
            ),
          ),
          const SizedBox(height: 20,),
          SizedBox(
            height: 320,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: FakeData.shoeList.length,
              itemBuilder: (context, index){
                Product product = FakeData.shoeList.elementAt(index);
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: ProductItem(product: product),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}