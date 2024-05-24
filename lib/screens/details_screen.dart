import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kidslearningapp/data.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({required this.detailcard});
  final AnimalInfo detailcard;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learn"),
      ),
      body: GestureDetector(
        child: Hero(
          tag: detailcard.iconImage,
          child: Image.asset(
            'assets/elephant.png',
            width: 150.0,
            height: 150.0,
          ),
          
        ),
        onTap: (){
          Get.back();
        },
      ),
    );
  }
}
