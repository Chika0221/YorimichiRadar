// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Providers
final keywordProvider = StateProvider<String>((ref) {
  return "";
});

final radiusProvider = StateProvider<double>((ref) {
  return 1.0;
}); // in km
