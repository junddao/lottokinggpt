import 'package:lottokinggpt/3_repositories/user_repository.dart';

import '../index.dart';

final authChangeNotifierProvider = ChangeNotifierProvider<AuthNotifier>((ref) {
  return AuthNotifier(ref);
});

class AuthNotifier extends ChangeNotifier {
  AuthNotifier(this.ref);

  final Ref ref;

  bool _isAuthenticated = false;

  bool get isAuthenticated => _isAuthenticated;

  void login() async {
    // 로그인 로직을 구현합니다.
    // 로그인 성공 시, _isAuthenticated를 true로 설정하고, _username을 저장합니다.
    _isAuthenticated = true;
    UtmUmsUserSignInRequest request = UtmUmsUserSignInRequest(email: 'cookie@twosun.com', password: 'a123456!');
    var aa = await ref.read(userRepositoryProvider).signIn(request);
    print(aa);
    notifyListeners(); // 변경 사항을 알립니다.
  }

  void logout() {
    // 로그아웃 로직을 구현합니다.
    // 로그아웃 성공 시, _isAuthenticated를 false로 설정하고, _username을 초기화합니다.
    _isAuthenticated = false;
    notifyListeners(); // 변경 사항을 알립니다.
  }
}
