import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  final Function()? onPressed;
   ReusableButton({Key? key, required this.onPressed,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(20)
      ),
      child: ElevatedButton(

        style: ButtonStyle(

        ),
        onPressed: onPressed,
        child: const Center(
          child: Text(
            "SUBMIT",
            style: TextStyle(
              fontSize: 20
            ),
          ),
        ),
      ),
    );
  }
}
