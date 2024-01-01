import 'package:ashtar_project/LOGIN/login.dart';
import 'package:ashtar_project/LOGIN/register.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'login',
        routes: {
          'login': (context) => const MyLogin(),
          'register': (context) => const MyRegister(),
        }),
  );
}

