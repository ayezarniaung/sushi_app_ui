import 'package:flutter/material.dart';
import 'package:sushi_app/constant.dart';
import 'package:sushi_app/widgets/widgets.dart';

class AddToCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: bgColor,
            actions: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey,
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Your Order',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: OrderList(),
          ),
        ],
      ),
    );
  }
}
