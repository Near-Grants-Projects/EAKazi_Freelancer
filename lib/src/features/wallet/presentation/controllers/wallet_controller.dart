import 'package:flutter_riverpod/flutter_riverpod.dart';

// Initial Selected Value
final selectedItemProvider = StateProvider<String>((ref) => 'Item 1');

// List of items in our dropdown menu
var items = [
  'Item 1',
  'Item 2',
  'Item 3',
  'Item 4',
  'Item 5',
];
