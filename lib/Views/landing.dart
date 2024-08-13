import 'package:flutter/material.dart';

import '../Components/campaign_advertisement_item.dart';
import '../Components/shop_by_type_section.dart';
import '../Components/welcome_heading_section.dart';
import '../Data/fake_data.dart';
class Landing extends StatelessWidget{
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20,),
              WelcomeHeadingSection(),

              CampaignAdvertisementItem(advertisement: FakeData.advertisement1,),
              const SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 10),
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
                    const SizedBox(height: 15,),
                    Text(
                      "The latest arrivals from Nike",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[700]!,
                          fontSize: 30
                      ),
                    ),
                  ],
                )
              ),
              const ShopByTypeSection(shoppingType: "New Arrivals",isHomepageShowed: true,),
              const SizedBox(height: 30,),

              CampaignAdvertisementItem(advertisement: FakeData.advertisement1,),
              const SizedBox(height: 60,),
            ],
          )
      ),
    );
  }
}