import 'package:flutter/material.dart';
import 'pages/characters_page.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: const Color(0xFF9B1B30),
        ),
        home: const CharactersPage(),
      ),
    );