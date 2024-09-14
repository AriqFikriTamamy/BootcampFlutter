import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.label,
      required this.controller,
      this.isPassword = false,
      this.validator});

  final String label;
  final TextEditingController controller;
  final bool isPassword;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35),
      child: TextFormField(
        controller: controller,
        obscureText: isPassword,
        validator: validator,
        decoration: InputDecoration(
          label: Text(
            label,
            style: const TextStyle(color: Color(0xffC0C0C0)),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffC0C0C0)),
          ),
        ),
      ),
    );
  }
}
