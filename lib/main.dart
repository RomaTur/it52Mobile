import 'package:flutter/material.dart';
import 'package:it52_mobile/ui/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  var sharedPreferences = await SharedPreferences.getInstance();
  runApp(MaterialApp(
    home: ProviderWrapper(),
  ));
}
