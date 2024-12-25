import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String hintText;
  final IconData icon;
  final Widget? suffixIcon;
  final bool? obscureText;

  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.keyboardType,
    required this.hintText,
    required this.icon,
    this.suffixIcon,
    this.obscureText,
  });



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 10,
              spreadRadius: 1,
              offset: const Offset(0,2),
            ),
          ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: TextFormField(
          obscureText: obscureText ?? false,
          controller: controller,
          keyboardType: keyboardType,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          cursorColor: Colors.grey,
          textAlign: TextAlign.start,
          decoration:  InputDecoration(
            hintText: hintText,
            border:InputBorder.none,
            prefixIcon: Icon(icon,size: 20,color: Colors.grey,),
            suffixIcon: suffixIcon
          ),
        ),
      ),
    );
  }
}