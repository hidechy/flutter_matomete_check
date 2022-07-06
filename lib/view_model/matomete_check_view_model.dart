import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state/matomete_check_state.dart';

final matometeCheckProvider = StateNotifierProvider.autoDispose<
    MatometeCheckNotifier, MatometeCheckState>((ref) {
  return MatometeCheckNotifier(
    const MatometeCheckState(
      record: [],
      checkValues: {},
      allCheck: false,
    ),
  )..getMatometeCheckData(word: '');
});

class MatometeCheckNotifier extends StateNotifier<MatometeCheckState> {
  MatometeCheckNotifier(MatometeCheckState state) : super(state);

  ///
  void getMatometeCheckData({required String word}) async {
    final todoufuken = getTodoufukenName();

    // 初期化
    if (word == "") {
      Map<String, bool> kenmeiMap = {};
      todoufuken.map((kenmei) => kenmeiMap[kenmei] = false);

      state = state.copyWith(
        record: todoufuken,
        checkValues: kenmeiMap,
        allCheck: false,
      );
    }
    // 初期化

    else {
      List<String> filteredList = todoufuken
          .where((kenmei) => kenmei.toLowerCase().contains(word))
          .toList();

      state = state.copyWith(record: filteredList);
    }
  }

  ///
  void changeCheckboxInList({required String kenmei, required bool value}) {
    final checkValue = {...state.checkValues};
    checkValue[kenmei] = value;
    state = state.copyWith(checkValues: checkValue);
  }

  ///
  void changeCheckboxParent({required bool value}) {
    final filteredList = [...state.record];

    Map<String, bool> kenmeiMap = {};

    for (var kenmei in filteredList) {
      kenmeiMap[kenmei] = value;
    }

    state = state.copyWith(
      allCheck: value,
      checkValues: kenmeiMap,
    );
  }

  ///
  List<String> getTodoufukenName() {
    return [
      "Hokkaido",
      "Aomori",
      "Iwate",
      "Miyagi",
      "Akita",
      "Yamagata",
      "Fukushima",
      "Ibaraki",
      "Tochigi",
      "Gunma",
      "Saitama",
      "Chiba",
      "Tokyo",
      "Kanagawa",
      "Niigata",
      "Toyama",
      "Ishikawa",
      "Fukui",
      "Yamanashi",
      "Nagano",
      "Gifu",
      "Shizuoka",
      "Aichi",
      "Mie",
      "Shiga",
      "Kyoto",
      "Osaka",
      "Hyogo",
      "Nara",
      "Wakayama",
      "Tottori",
      "Shimane",
      "Okayama",
      "Hiroshima",
      "Yamaguchi",
      "Tokushima",
      "Kagawa",
      "Ehime",
      "Kochi",
      "Fukuoka",
      "Saga",
      "Nagasaki",
      "Kumamoto",
      "Oita",
      "Miyazaki",
      "Kagoshima",
      "Okinawa",
    ];
  }
}
