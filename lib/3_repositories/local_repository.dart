import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottokinggpt/4_datasource/local/shared_preferences_provider.dart';

final localRepositoryProvider = Provider<LocalRepository>((ref) {
  return LocalRepository(ref);
});

class LocalRepository {
  final Ref ref;

  LocalRepository(this.ref);

  /// 토큰정보
  String? getToken() {
    var jwt = ref.read(sharedPreferencesProvider).getString(SharedPreferencesKey.jwt.name);
    return jwt;
  }

  /// 토큰정보 저장
  void setToken(String token) {
    ref.read(sharedPreferencesProvider).setString(SharedPreferencesKey.jwt.name, token);
  }

  /// 테마데이터
  int getThemeData() {
    var result = ref.watch(sharedPreferencesProvider).getInt(SharedPreferencesKey.theme.name) ?? ThemeMode.light.index;
    return result;
  }

  /// 테마데이터 설정
  void setThemeData(ThemeMode themeMode) {
    ref.read(sharedPreferencesProvider).setInt(SharedPreferencesKey.theme.name, themeMode.index);
  }
}
