import 'package:flutter/material.dart';
import 'package:nike/Components/interest_item.dart';
import 'package:nike/Data/fake_data.dart';
import 'package:nike/Models/interest.dart';
class ShopByInterests extends StatelessWidget{
  const ShopByInterests({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
             const Text(
                "Shop My Interests",
                style: TextStyle(
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
          SizedBox(
            height: 250,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: FakeData.systemUser.interestList.length,
              itemBuilder: (context, index){
                Interest interest = FakeData.systemUser.interestList.elementAt(index);
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: InterestItem(interest: interest),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}