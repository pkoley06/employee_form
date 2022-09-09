import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReusableDropdown extends StatelessWidget {

  final List<dynamic> items;
  String value;

   ReusableDropdown({Key? key,required this.value, required this.items }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: DropdownButton(
        value: value,
          items: items.map(
              (e)=> DropdownMenuItem(value: e, child: Text(e),)
          ).toList(),
        onChanged: (value) {

        }),

    );
  }
}
