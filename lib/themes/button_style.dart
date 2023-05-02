import 'package:flutter/material.dart';

final ButtonStyle normalButton = ElevatedButton.styleFrom(
  minimumSize: const Size(64, 48),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
  elevation: 0,
  backgroundColor: Colors.yellow,
  foregroundColor: Colors.black,
);

final ButtonStyle warningButton = ElevatedButton.styleFrom(
  minimumSize: const Size(64, 48),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
  elevation: 0,
  backgroundColor: Colors.red,
  foregroundColor: Colors.white,
);
