import 'package:ecommerce/core/reusable%20componant/auth_form_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AuthTextFormField(hint: '', controller: TextEditingController(), textInputAction: TextInputAction.next,),
        ],
      ),

    );
  }
}
