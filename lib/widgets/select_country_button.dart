// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SelectCountryButton extends StatelessWidget {
  final String countryName;

  final Function? callback;

  const SelectCountryButton({
    Key? key,
    required this.countryName,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        callback!(countryName);
      },
      child: Text(
        countryName.toUpperCase(),
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
