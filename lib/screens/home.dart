import 'package:flutter/material.dart';
import 'package:sushi_app/constant.dart';
import 'package:sushi_app/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: ShareAndSearchItem(),
          ),
          SliverToBoxAdapter(
            child: ItemsCard(),
          ),
          SliverToBoxAdapter(
            child: ItemsCard(),
          ),
        ],
      ),
    );
  }
}
