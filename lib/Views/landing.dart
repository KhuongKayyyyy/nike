import 'package:flutter/material.dart';

import '../Components/image_ad.dart';
import '../Components/new_arrival_section.dart';
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
              ImageAd(imageURL: FakeData.imageAd.first,),
              const SizedBox(height: 20,),
              NewArrivalSection(),
              const SizedBox(height: 30,),
              ImageAd(imageURL: FakeData.imageAd.elementAt(0),),
              const SizedBox(height: 60,),
            ],
          )
      ),
    );
  }
}