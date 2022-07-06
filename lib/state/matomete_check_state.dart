import 'package:freezed_annotation/freezed_annotation.dart';

part 'matomete_check_state.freezed.dart';

@freezed
class MatometeCheckState with _$MatometeCheckState {
  const factory MatometeCheckState({
    required List<String> record,
    required Map<String, bool> checkValues,
    required bool allCheck,
  }) = _MatometeCheckState;
}
