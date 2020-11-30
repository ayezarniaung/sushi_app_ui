import 'package:flutter/material.dart';
import 'package:sushi_app/constant.dart';
import 'package:sushi_app/widgets/widgets.dart';


class ShareAndSearchItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.share,
                ),
                Icon(Icons.search),
              ],
            ),
            SizedBox(height: 40),
            Text(
              'Fresh Healthy',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Delicious Sushi',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20),
            FoodTypes(),
          ],
        ),
      ),
    );
  }
}
