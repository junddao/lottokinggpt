import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottokinggpt/4_datasource/local/shared_preferences_provider.dart';
import 'package:lottokinggpt/index.dart';
import 'package:lottokinggpt/my_app.dart';
import 'package:lottokinggpt/utils/observers/riverpod_observer.dart';
import 'package:lottokinggpt/utils/services/firebase_service.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  // const isLiveMode = bool.fromEnvironment("flavor", defaultValue: false);
  const isLiveMode = true;

  if (isLiveMode) {
    FlavorConfig(
      name: "LIVE",
      variables: {
        "EndPoint": "https://api.ums.lottokinggpt.twosun.com",
      },
    );
  } else {
    FlavorConfig(
      name: "TEST",
      variables: {
        "EndPoint": "https://api.ums.lottokinggpt.twosun.com",
      },
    );
  }

  // 기본 앱세팅
  await platformSetup();

  // 내부 스토리지 생성
  var prefs = await SharedPreferences.getInstance();
  // 패키지 정보 가져오기
  var packageInfo = await PackageInfo.fromPlatform();

  // 앱 실행
  runApp(
    ProviderScope(
      observers: [RiverpodObserver()],
      overrides: [
        sharedPreferencesProvider.overrideWithValue(prefs),
        packageInfoProvider.overrideWithValue(packageInfo),
      ],
      child: const MyApp(),
    ),
  );
}

/// 플러터 환경설정 세팅
Future<void> platformSetup() async {
  // Flutter 엔진과 위젯의 바인딩 작업
  WidgetsFlutterBinding.ensureInitialized();

  // 가로모드 제어
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // 다국어 기본 한국어로 적용
  Intl.defaultLocale = 'ko_KR';

  // 충돌 보고 및 예외처리
  if (isLiveMode) {
    flutterErrorObserver();
  }

  // Equatable toString() 은 주어진 모든 props를 포함하는 메서드를 구현할 수 있습니다.
  EquatableConfig.stringify = true;

  // Firebase 초기화
  await FirebaseService().initialize();

  // svg 캐시 저장
  svgPrecacheImage();
}

/// svg 이미지 캐싱
void svgPrecacheImage() {
  //svg 2.x.x 버전 캐싱
  const loader = SvgAssetLoader('assets/svg/flutter_logo.svg');
  svg.cache.putIfAbsent(loader.cacheKey(null), () => loader.loadBytes(null));
}
