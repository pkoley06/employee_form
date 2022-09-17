import 'package:employee_form/model/provider_data_class.dart';
import 'package:employee_form/model/register.dart';
import 'package:employee_form/pages/users_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:provider/provider.dart';
import '../Button_Style/button_field.dart';
import '../Fields_Style/text_field.dart';
import '../label/label_text.dart';


class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {

  var nameController = TextEditingController();
  // TextEditingController? lastNameController;
  var emailController = TextEditingController();
  // TextEditingController? zipController;
  // TextEditingController? countryController;
  // TextEditingController? mobileNumberController;
  // TextEditingController? employeeIdController;
  var passwordController = TextEditingController();

  Future<void> _registration() async {
    String name = nameController.text.trim();
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    RegisterPage register = RegisterPage(
        name: name, email: email, password: password);
    var provider = Provider.of<ProviderDataClass>(context, listen: false);
    await provider.postData(register);
    if (provider.isBack) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>  UsersPage()),
      );
    }
  }



  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  //
  // void validate(){
  //   if(_globalKey.currentState!.validate()){
  //     print("ok");
  //   }else{
  //     print("error");
  //   }
  // }


  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Employee Form", )),
          backgroundColor: Colors.amber,
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children:  [
              ReusableTextField(
                controller: nameController,
                validator: MultiValidator([
                  RequiredValidator(errorText: "Required"),
                  LengthRangeValidator(min: 2, max: 15, errorText: "Invalid Name"),
                ]),
                // maxLength: 10,
                label: Label.nameLabel,
                textCapitalization: TextCapitalization.characters,
                isObscureText: false,
                hintText: Label.nameLabel,
              ),//First name
              // ReusableTextField(
              //   controller: lastNameController,
              //   validator: MultiValidator([
              //     RequiredValidator(errorText: "Required"),
              //     LengthRangeValidator(min: 2, max: 15, errorText: "Invalid Last Name"),
              //   ]),
              //   // maxLength: 10,
              //   label: Label.lastNameLabel,
              //   textCapitalization: TextCapitalization.characters,
              //   isObscureText: false,
              //   hintText: Label.lastNameLabel,
              // ),//Last name
              // ReusableDropdown(
              //   validator: MinLengthValidator(1, errorText: "Required"),
              //   items: ["MALE", "FEMALE", "OTHER"],
              //   hint: Label.genderLabel),//Gender
              // ReusableTextField(
              //   controller: countryController,
              //   validator: (val){
              //     if(val!.isEmpty){
              //       return "Required";
              //     }
              //     else
              //       return null;
              //   },
              //   // maxLength: 15,
              //   label: Label.countryLabel,
              //   textCapitalization: TextCapitalization.characters,
              //   isObscureText: false,
              //   hintText: Label.countryLabel,
              // ),//Country

              // ReusableDropdown(
              //   validator: MinLengthValidator(1, errorText: "Required"),
              //   hint: Label.stateLabel,
              //   items: ["Andhra Pradesh",
              //     "Arunachal Pradesh",
              //     "Assam",
              //     "Bihar",
              //     "Chhattisgarh",
              //     "Goa",
              //     "Gujarat",
              //     "Haryana",
              //     "Himachal Pradesh",
              //     "Jharkhand",
              //     "Karnataka",
              //     "Kerala",
              //     "Madhya Pradesh",
              //     "Maharashtra",
              //     "Manipur",
              //     "Meghalaya",
              //     "Mizoram",
              //     "Nagaland",
              //     "Odisha",
              //     "Punjab",
              //     "Rajasthan",
              //     "Sikkim",
              //     "Tamil Nadu",
              //     "Telangana",
              //     "Tripura",
              //     "Uttarakhand",
              //     "Uttar Pradesh",
              //     "West Bengal"],
              // ),//state
              // ReusableTextField(
              //   controller: zipController,
              //   maxLength: 6,
              //   keyboardType: TextInputType.numberWithOptions(decimal: false),
              //   inputFormatters: <TextInputFormatter>[
              //     FilteringTextInputFormatter.digitsOnly
              //   ], // Only numbers can be entered[],
              //   validator: LengthRangeValidator(min: 6, max: 6, errorText: "Invalid"),
              //   label: Label.zipcodeLabel,
              //   textCapitalization: TextCapitalization.characters,
              //   isObscureText: false,
              //   hintText: Label.zipcodeLabel,
              // ),//zipcode
              ReusableTextField(
                controller: emailController,
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
              ),//Email
              // ReusableTextField(
              //   controller: mobileNumberController,
              //   decoration: InputDecoration(
              //     prefixText: "+91"
              //   ),
              //   maxLength: 10,
              //   keyboardType: TextInputType.numberWithOptions(decimal: false),
              //   inputFormatters: <TextInputFormatter>[
              //     FilteringTextInputFormatter.digitsOnly
              //   ], // Only numbers can be entered[],
              //   validator: LengthRangeValidator(min: 10, max: 10, errorText: "Invalid"),
              //   label: Label.numberLabel,
              //   textCapitalization: TextCapitalization.characters,
              //   isObscureText: false,
              //   hintText: Label.numberLabel,
              // ),//Mobile Number
              // ReusableTextField(
              //   controller: employeeIdController,
              //   decoration: InputDecoration(
              //     prefix: Padding(
              //       padding: EdgeInsets.symmetric(horizontal: 16),
              //       child: Text("ZT-"),
              //     )
              //   ),
              //   maxLength: 4,
              //   keyboardType: TextInputType.numberWithOptions(decimal: false),
              //   inputFormatters: <TextInputFormatter>[
              //     FilteringTextInputFormatter.digitsOnly
              //   ], // Only numbers can be entered[],
              //   validator: LengthRangeValidator(min: 4, max: 4, errorText: "Invalid"),
              //   label: Label.empIdLabel,
              //   textCapitalization: TextCapitalization.characters,
              //   isObscureText: false,
              //   hintText: Label.empIdLabel,
              // ),//Employee id
              ReusableTextField(
                controller: passwordController,
                validator: MinLengthValidator(
                    6, errorText: "Minimum Length 6"
                ),
                keyboardType: TextInputType.numberWithOptions(decimal: false),
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                label: Label.passwordLabel,
                textCapitalization: TextCapitalization.characters,
                hintText: Label.passwordLabel,
              ),//Email
              // ReusableTextField(
              //   controller: mobileNumberController,
              //   decoration: InputDecoration(
              //     prefixText: "+91"
              //   ),
              //   maxLength: 10,
              //   keyboardType: TextInputType.numberWithOptions(decimal: false),
              //   inputFormatters: <TextInputFormatter>[
              //     FilteringTextInputFormatter.digitsOnly
              //   ], // Only numbers can be entered[],
              //   validator: LengthRangeValidator(min: 10, max: 10, errorText: "Invalid"),
              //   label: Label.numberLabel,
              //   textCapitalization: TextCapitalization.characters,
              //   isObscureText: false,
              //   hintText: Label.numberLabel,
              // ),//Mobile Number
              // ReusableTextField(
              //   controller: employeeIdController,
              //   decoration: InputDecoration(
              //     prefix: Padding(
              //       padding: EdgeInsets.symmetric(horizontal: 16),
              //       child: Text("ZT-"),
              //     )
              //   ),
              //   maxLength: 4,
              //   keyboardType: TextInputType.numberWithOptions(decimal: false),
              //   inputFormatters: <TextInputFormatter>[
              //     FilteringTextInputFormatter.digitsOnly
              //   ], // Only numbers can be entered[],
              //   validator: LengthRangeValidator(min: 4, max: 4, errorText: "Invalid"),
              //   label: Label.empIdLabel,
              //   textCapitalization: TextCapitalization.characters,
              //   isObscureText: false,
              //   hintText: Label.empIdLabel,
              // ),//Employee id
              SizedBox(
                width: double.maxFinite,
                height: 50,
                child: ReusableButton(
                  onPressed: (){
                    _registration();

                  },
                ),
              ),//submit
            ],
          ),
        ),

      ),
    );
  }
}
