import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      required this.textInputType,
   
      this.suffixIcon, this.onSaved, this. maxLines = 1});
  final String hintText;
  final TextInputType textInputType;
  final Widget? suffixIcon;
  final int maxLines;
 final  void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
 maxLines: maxLines,
      textDirection: TextDirection.ltr,
      onSaved: onSaved,
      validator: (value){
        if(value == null || value.isEmpty){
          return 'هذا الحقل مطلوب';
        }
        return null;
      },
      keyboardType: textInputType,
      decoration: InputDecoration(
       
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.black),
        filled: true,
        fillColor: Colors.grey.shade100,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }
}
