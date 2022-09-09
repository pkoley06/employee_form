import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  const ReusableButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: GestureDetector(
        onTap: (){
          print("Button Tapped");
        },
        child: const Center(
          child: Text(
            "SUBMIT",
            style: TextStyle(
              fontSize: 20
            ),
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}
