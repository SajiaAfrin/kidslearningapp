import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kidslearningapp/data.dart';
import 'package:kidslearningapp/widgets/custom_headers.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({required this.animal});
  final AnimalInfo animal;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: animal.color,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            animal.name,
            style: TextStyle(fontSize: 36, color: Colors.black),
          ),
          leading: Icon(
            Icons.filter_list,
            color: Colors.amber,
            size: 40.0,
          ),
         
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 300,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: animal.color,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
              child: GestureDetector(
                child: Hero(
                    tag: animal.iconImage,
                    child: Image(
                      image: AssetImage(animal.iconImage),
                    )),
                onTap: () {
                  Get.back();
                },
              ),
            ),
            Container(
                color: Colors.white,
                height: 300,
                child: SingleChildScrollView(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Header(text: animal.name),
                        SubHeader(text: animal.paragraph),
                        SizedBox(
                          height: 10,
                        ),
                         Header(text: "Lifespan"),
                        SubHeader(text: animal.lifespan),
                         SizedBox(
                          height: 10,
                        ),
                         Header(text: "Speed"),
                        SubHeader(text: animal.speed),
                      ],
                    ))),
          ],
        ),
      ),
    );
  }
}
