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
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            animal.name,
            style: TextStyle(fontSize: 36, color: Colors.black),
          ),
          leading: Icon(
            Icons.filter_list,
            color: Colors.black,
            size: 40.0,
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(

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
                  )),
            ),
            Expanded(
                child: Container(
                    color: Colors.white,
                    child: animal.images.length != 0
                        ? Container(
                            padding: EdgeInsets.only(left: 20, right: 10),
                            color: Colors.white,
                            width: double.infinity,
                            child: Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Header(text: "Image"),
                                Expanded(
                                    child: ListView.builder(
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: animal.images.length,
                                        itemBuilder: (context, index) =>
                                            PictureCard(
                                              imageUrl: animal.images[index],
                                            )))
                              ],
                            )),
                          )
                        : Container(
                            color: Colors.white,
                          )))
          ],
        ),
      ),
    );
  }
}
