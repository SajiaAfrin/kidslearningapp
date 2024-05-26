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
      body: Column(
        children: [
          
          Container(
            decoration: BoxDecoration(
              color: detailcard.color,
            ),
            child: GestureDetector(
              child: Hero(
                tag: detailcard.iconImage,
                child: Image(
                  image :  AssetImage(detailcard.iconImage),
                 )
                ),
                
              
              onTap: (){
                Get.back();
              },
            ),
          ),
        ],
      ),
    );
  }
}
