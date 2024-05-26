import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kidslearningapp/data.dart';
import 'package:kidslearningapp/screens/details_screen.dart';
import 'package:kidslearningapp/widgets/card.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<AnimalInfo> cards = [];
  @override
  void initState() {
    cards = animallist;
    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ListView.builder(
            
        shrinkWrap: true,
        padding: EdgeInsets.all(5.0),
        itemCount: cards.length,
        itemBuilder: (BuildContext context, int index) => CardScreen(
          card: cards[index],
          onPressed: () {
            Get.to(DetailsScreen(
              detailcard: cards[index],
            ));
          },
        ),
      )),
    );
  }
}
