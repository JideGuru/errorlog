import 'package:flutter/material.dart';
import 'package:social_katchup/utils/myTextStyle.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key key,
    @required this.size,
    @required this.labelText,
    this.hintText,
    this.controller,
    this.suffix, this.obscureText,
  }) : super(key: key);

  final Size size;
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final Widget suffix;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size.width,
        child: TextFormField(
          style: myStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
          obscureText: obscureText,
          decoration: InputDecoration(
            
              labelText: labelText,
              labelStyle: myStyle(fontSize: 13.0,color: Colors.grey),
              hintText: hintText,
              
              suffix: suffix,
              suffixIconConstraints: BoxConstraints(maxWidth: 20)),
        ));
  }
}
