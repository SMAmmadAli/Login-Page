import 'package:flutter/material.dart';

Text_Form_Field_View(text, lbtext, bool Bools) {
  return TextFormField(
    obscureText: Bools,
    decoration: InputDecoration(
        hintText: text,
        labelText: lbtext,
        labelStyle:
            TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
    validator: (value) {
      if (value == null || value.isEmpty) {
        return " Please $text";
      }
      return null;
    },
  );
}
