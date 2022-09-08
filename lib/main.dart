import 'package:employee_form/Button_Style/button_field.dart';
import 'package:employee_form/Fields_Style/text_field.dart';
import 'package:employee_form/label/label_text.dart';
import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Employee Form", )),
          backgroundColor: Colors.amber,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Form(
                  key: _globalKey,
                  child: Column(
                    children: const [
                      ReusableTextField(
                        maxLength: 10,
                        label: Label.firstNameLabel,
                        textCapitalization: TextCapitalization.characters,
                        isObscureText: false,
                        hintText: Label.firstNameLabel,
                      ),
                      ReusableTextField(
                        maxLength: 10,
                        label: Label.lastNameLabel,
                        textCapitalization: TextCapitalization.characters,
                        isObscureText: false,
                        hintText: Label.lastNameLabel,
                      ),
                      ReusableTextField(
                        maxLength: 15,
                        label: Label.countryLabel,
                        textCapitalization: TextCapitalization.characters,
                        isObscureText: false,
                        hintText: Label.countryLabel,
                      ),
                      ReusableTextField(
                        maxLength: 15,
                        label: Label.stateLabel,
                        textCapitalization: TextCapitalization.characters,
                        isObscureText: false,
                        hintText: Label.stateLabel,
                      ),
                      ReusableTextField(
                        maxLength: 6,
                        label: Label.zipcodeLabel,
                        textCapitalization: TextCapitalization.characters,
                        isObscureText: false,
                        hintText: Label.zipcodeLabel,
                      ),
                      ReusableTextField(
                        maxLength: 20,
                        label: Label.emailLabel,
                        textCapitalization: TextCapitalization.characters,
                        isObscureText: false,
                        hintText: Label.emailLabel,
                      ),
                      ReusableTextField(
                        maxLength: 20,
                        label: Label.emailLabel,
                        textCapitalization: TextCapitalization.characters,
                        isObscureText: false,
                        hintText: Label.emailLabel,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ReusableButton()
          ],
        ),

      ),
    );
  }
}
