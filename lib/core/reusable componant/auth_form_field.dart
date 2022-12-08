import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AuthTextFormField extends StatefulWidget {
  final String hint;
  final TextEditingController controller;
  final bool isPassword;
  final int? maxLength;
  final FormFieldValidator<dynamic>? validators;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final bool enabled;

  const AuthTextFormField({
    Key? key,
    required this.hint,
    required this.controller,
    this.isPassword = false,
    this.maxLength,
    this.validators,
    this.textInputType = TextInputType.text,
    required this.textInputAction,
    this.enabled = true,
  }) : super(key: key);

  @override
  State<AuthTextFormField> createState() => _AuthTextFormFieldState();
}

class _AuthTextFormFieldState extends State<AuthTextFormField> {
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("data"),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 15.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.hint,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 10.sp),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.sp),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15.sp),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: TextFormField(
                    textInputAction: widget.textInputAction,
                    keyboardType: widget.textInputType,
                    maxLength: widget.maxLength,
                    validator: widget.validators,
                    controller: widget.controller,
                    obscureText: obscureText,
                    enabled: widget.enabled,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: Visibility(
                          visible: widget.isPassword,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                obscureText = !obscureText;
                              });
                            },
                            child: Icon(
                              obscureText ? Icons.visibility_off : Icons.visibility,
                              color: Colors.grey,
                            ),
                          ),
                        )),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
