import 'package:country_calling_code_picker/picker.dart';
import 'package:flutter/material.dart';

class CountryCodeSelectScreen extends StatefulWidget {
  const CountryCodeSelectScreen({super.key});

  @override
  State<CountryCodeSelectScreen> createState() =>
      _CountryCodeSelectScreenState();
}

class _CountryCodeSelectScreenState extends State<CountryCodeSelectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: CountryPickerWidget(
          onSelected: (country) => Navigator.pop(context, country),
        ),
      ),
    );
  }
}
