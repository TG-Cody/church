import 'package:flutter/material.dart';

class LoginSignupComponents extends StatelessWidget {
  final String label;
  final IconData prefix;
  final TextEditingController c;
  final String hint;
  final Function f;
  final bool obscure;

  const LoginSignupComponents(
      {Key key,
      this.label,
      this.prefix,
      this.c,
      this.hint,
      this.f,
      this.obscure})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 32),
      width: MediaQuery.of(context).size.width * .5,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
          bottomLeft: Radius.circular(16),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        child: TextField(
          style: TextStyle(color: Colors.white),

          //  controller: c,
          //onChanged: f,
          obscureText: obscure,

          decoration: InputDecoration(
            filled: true,
            labelText: label,
            labelStyle: TextStyle(color: Colors.white),
            hintText: hint,
            hintStyle: TextStyle(color: Colors.white),
            prefixIcon: Icon(
              prefix,
              color: Colors.white,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
