import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        suffixIcon: const Opacity(
          opacity: 0.8,
          child: Icon(
            FontAwesomeIcons.search,
            size: 20,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
