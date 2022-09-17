import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  final Function()? onPressed;
   const ReusableButton({Key? key, required this.onPressed,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

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
    );
  }
}
