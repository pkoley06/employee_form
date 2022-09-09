import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReusableTextField extends StatelessWidget {
  String? Function(String?)? validator;
  final TextInputType ?keyboardType;
  final String ?label;
  final String ?hintText;
  final IconData ?iconData;
  final int ?noOfLine;
  final int? maxLength;
  // final TextEditingController ?controller;
  // final FocusNode ?currentFocus;
  // final FocusNode ?nextFocus;
  // final bool isLastFocus;
  final TextInputType ?textInputType;
  final bool isObscureText;
  final String ?errorText;
  final String ?suffixIconMsg;
  final Function() ?onTap;
  final TextCapitalization textCapitalization;
   ReusableTextField({Key? key,required this.validator, this.keyboardType, this.label, this.hintText, this.iconData, this.noOfLine, this.textInputType, required this.isObscureText, this.errorText, this.suffixIconMsg, this.onTap, required this.textCapitalization, this.maxLength}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: TextFormField(
        validator: validator,
        maxLength: maxLength,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: label,
          labelStyle: const TextStyle(
            color: Colors.orange
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.all(Radius.circular(25))
          )
        ),


      ), 
    );
  }
}
