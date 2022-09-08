import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  const ReusableButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: (){
          print("Button Tapped");
        },
        child: Container(
          height: 50,
          width: double.maxFinite,
          margin: const EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(40)

          ),
          child: const Center(
            child: Text(
              "Submit"
            ),
          ),
        ),
      ),
    );
  }
}
