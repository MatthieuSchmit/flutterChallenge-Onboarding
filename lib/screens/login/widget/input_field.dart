/*
 * flutter_design_challenge - screens.login.widget/input_field
 *
 * by Matthieu S. at 08-01-21 15:16
 *
 */

import 'package:flutter/material.dart';
import 'package:flutter_design_challenge/constants.dart';

class InputField extends StatelessWidget {

  final String hintText;
  final IconData logo;
  final bool obscureText;

  InputField({
    @required this.hintText,
    @required this.logo,
    this.obscureText = false
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: this.obscureText,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderSide: BorderSide(color: kGrey, width: 1.0)),
        hintText: this.hintText,
        prefixIcon: Icon(this.logo)
      ),
    );
  }

}
 