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
  List<AnimalInfo> animals = [];
  @override
  void initState() {
    animals = animallist;
    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
           appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
           "Learn",
            style: TextStyle(fontSize: 36, color: Colors.black),
          ),
          leading: Icon(
            Icons.filter_list,
            color: Colors.amber,
            size: 40.0,
          ),
          actions: [Image(image: AssetImage("assets/c_fish.png"))],
        ),
          body: ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.all(5.0),
            itemCount: animals.length,
            itemBuilder: (context, index) => CardScreen(
              animal: animals[index],
              onPressed: () {
                Get.to(DetailsScreen(
                  animal: animals[index],
                ));
              },
            ),
          )),
    );
  }
}
