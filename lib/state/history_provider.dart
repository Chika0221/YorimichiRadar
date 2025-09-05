// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:yorimichi_radar/models/record.dart' as rc;

final historyProvider =
    NotifierProvider<HistoryNotifier, List<rc.Record>>(HistoryNotifier.new);

class HistoryNotifier extends Notifier<List<rc.Record>> {
  @override
  List<rc.Record> build() {
    // TODO: 今後、SharedPreferencesやデータベースから永続化されたデータを読み込む
    return [];
  }

  void addRecord(rc.Record record) {
    state = [record, ...state];
    // TODO: 永続化層に保存する
  }

  void clearHistory() {
    state = [];
    // TODO: 永続化層から削除する
  }
}
