import 'package:employee_form/Button_Style/button_field.dart';
import 'package:employee_form/Fields_Style/dropdown.dart';
import 'package:employee_form/Fields_Style/text_field.dart';
import 'package:employee_form/label/label_text.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  void validate(){
    if(_globalKey.currentState!.validate()){
      print("ok");
    }else{
      print("error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Employee Form", )),
          backgroundColor: Colors.amber,
        ),
        body: SizedBox(
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: _globalKey,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children:  [
                  ReusableTextField(
                    validator: MultiValidator([
                      RequiredValidator(errorText: "Required"),
                      LengthRangeValidator(min: 2, max: 15, errorText: "Invalid First Name"),
                    ]),
                    maxLength: 10,
                    label: Label.firstNameLabel,
                    textCapitalization: TextCapitalization.characters,
                    isObscureText: false,
                    hintText: Label.firstNameLabel,
                  ),
                  ReusableTextField(
                    validator: MultiValidator([
                      RequiredValidator(errorText: "Required"),
                      LengthRangeValidator(min: 2, max: 15, errorText: "Invalid Last Name"),
                    ]),
                    maxLength: 10,
                    label: Label.lastNameLabel,
                    textCapitalization: TextCapitalization.characters,
                    isObscureText: false,
                    hintText: Label.lastNameLabel,
                  ),
                  ReusableTextField(
                    validator: (val){
                      if(val!.isEmpty){
                        return "Required";
                      }
                      else
                        return null;
                    },
                    maxLength: 15,
                    label: Label.countryLabel,
                    textCapitalization: TextCapitalization.characters,
                    isObscureText: false,
                    hintText: Label.countryLabel,
                  ),
                  ReusableTextField(
                    validator: (val){
                      if(val!.isEmpty){
                        return "Required";
                      }
                      else
                        return null;
                    },
                    maxLength: 15,
                    label: Label.stateLabel,
                    textCapitalization: TextCapitalization.characters,
                    isObscureText: false,
                    hintText: Label.stateLabel,
                  ),
                  ReusableTextField(
                    validator: LengthRangeValidator(min: 6, max: 6, errorText: "Invalid"),
                    label: Label.zipcodeLabel,
                    textCapitalization: TextCapitalization.characters,
                    isObscureText: false,
                    hintText: Label.zipcodeLabel,
                  ),
                  ReusableTextField(
                    validator: MultiValidator([
                      RequiredValidator(errorText: "Required"),
                      MinLengthValidator(5, errorText: "Incomplete Email"),
                      EmailValidator(errorText: "Invalid Email"),

                    ]
                    ),
                    label: Label.emailLabel,
                    textCapitalization: TextCapitalization.characters,
                    isObscureText: false,
                    hintText: Label.emailLabel,
                  ),
                  ReusableButton(
                    onPressed: validate,
                  ),
                  // ReusableDropdown(items: ["MALE", "FEMALE", "OTHER"], value: '',)
                ],
              ),
            ),
          ),
        ),

      ),
    );
  }
}
