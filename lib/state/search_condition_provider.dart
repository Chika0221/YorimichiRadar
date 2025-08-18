// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Providers
final keywordProvider = StateProvider<String>((ref) => 'ラーメン屋');

final radiusProvider = StateProvider<double>((ref) {
  return 1.0;
}); // in km
