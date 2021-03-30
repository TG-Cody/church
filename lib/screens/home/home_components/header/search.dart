import 'package:flutter/material.dart';

class SearchContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: Container(
        width: MediaQuery.of(context).size.width * .6,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
        ),
        child: TextField(
          decoration: InputDecoration(
            labelText: 'Pesquisar',
            suffixIcon: Icon(
              Icons.search,
            ),
          ),
        ),
      ),
    );
  }
}
