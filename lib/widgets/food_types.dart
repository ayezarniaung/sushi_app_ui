import 'package:flutter/material.dart';


class FoodTypes extends StatefulWidget {
  @override
  _FoodTypesState createState() => _FoodTypesState();
}

class _FoodTypesState extends State<FoodTypes> {
  bool _isSelected = false;
  List<String> selectedItems = [];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: ['Rolls', 'Soups', 'Niglri']
          .asMap()
          .map(
            (key, value) => MapEntry(
              key,
              ChoiceChip(
                padding: EdgeInsets.symmetric(horizontal: 12),
                selectedColor: Colors.white,
                label: Text(
                  value,
                  style: TextStyle(color: Colors.black),
                ),
                onSelected: (index) => setState(() {
                  print(selectedItems);
                  _isSelected = index;
                  if (selectedItems.contains(value)) {
                    selectedItems.add(value);
                  } else {
                    selectedItems.remove(value);
                  }
                }),
                selected: _isSelected,
              ),
            ),
          )
          .values
          .toList()
            ..add(
              ChoiceChip(
                onSelected: (value) => print('tap filter'),
                label: Icon(Icons.filter_list),
                selected: false,
              ),
            ),
    );
  }
}
