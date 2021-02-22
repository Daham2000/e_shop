import 'package:e_shop/util/assets.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_Location: Assets.CATEGORY_T_SHIRT,
            image_Caption: "T-shirts",
          ),
          Category(
            image_Location: Assets.CATEGORY_DRESS,
            image_Caption: "Dress",
          ),
          Category(
            image_Location: Assets.CATEGORY_FORMAL,
            image_Caption: "Formal dress",
          ),
          Category(
            image_Location: Assets.CATEGORY_PANTS,
            image_Caption: "Pants",
          ),
          Category(
            image_Location: Assets.CATEGORY_SHOES,
            image_Caption: "Shoes",
          ),

        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_Location;
  final String image_Caption;

  Category({this.image_Location, this.image_Caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 100.0,
        child: InkWell(
          onTap: () {},
          child: ListTile(
            title: Image.asset(
              image_Location,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_Caption),
            ),
          ),
        ),
      ),
    );
  }
}
