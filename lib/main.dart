import 'package:flutter/material.dart';

import 'widgets/select_country_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String selectedLocation = '';
  String countryName = 'usa';

  callback(varCountryName) {
    setState(() {
      countryName = varCountryName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('currency location + flag'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'the selected location is -',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                countryName.toLowerCase(),
                style: const TextStyle(fontSize: 30),
              ),
              const SizedBox(height: 10),
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/flags/$countryName.png'),
              ),
              const SizedBox(height: 30),
              SelectCountryButton(
                countryName: 'germany',
                callback: callback,
              ),
              const SizedBox(height: 15),
              SelectCountryButton(
                countryName: 'cambodia',
                callback: callback,
              ),
              const SizedBox(height: 15),
              SelectCountryButton(
                countryName: 'greece',
                callback: callback,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
