import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReusableDropdown extends StatefulWidget {

  final String? Function(String?)? validator;
  List<String> items;
   String hint;
   ReusableDropdown({Key? key,required this.hint,this.validator, required this.items }) : super(key: key);

  @override
  State<ReusableDropdown> createState() => _ReusableDropdownState();
}

class _ReusableDropdownState extends State<ReusableDropdown> {
    var value;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      decoration: BoxDecoration(
        // border: Border.all(
        //     color: Colors.grey
        // ),
        // shape: BoxShape.values.first,
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ) ,
      child: DropdownButtonHideUnderline(
        child: DropdownButtonFormField(

          autovalidateMode: AutovalidateMode.always,
          menuMaxHeight: 300,
          elevation: 5,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              gapPadding: 10
            )
          ),
          dropdownColor: Colors.greenAccent,
            borderRadius: BorderRadius.circular(25),
          value: value,
            hint: Text(widget.hint, style: TextStyle(color: Colors.green),),
            items: widget.items.map((e) => DropdownMenuItem(child: Text(e, textAlign: TextAlign.values.first,),value: e)).toList(),
              onChanged: (selectedValue) {
                    setState(() {
                      value = selectedValue;
                    });
          }
        ),
      ),
    );
  }
}
