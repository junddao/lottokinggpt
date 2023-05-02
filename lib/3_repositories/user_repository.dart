import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottokinggpt/4_datasource/remote/rest_api_provider.dart';
import 'package:lottokinggpt/models/data_response.dart';
import 'package:lottokinggpt/models/requests/utm_ums_user_sign_in_request.dart';
import 'package:lottokinggpt/models/responses/utm_ums_user_sign_in_response.dart';

final userRepositoryProvider = Provider<UserRepository>((ref) {
  return UserRepository(ref);
});

class UserRepository {
  final Ref ref;

  UserRepository(this.ref);

  Future<DataResponse<UtmUmsUserSignInResponse>> signIn(UtmUmsUserSignInRequest request) async {
    var result = await ref.watch(restApiProvider).postSignIn(request);
    return result;
  }

  // Future<DataResponse<PostResponse>> getUser2(String id) {
  //   var result = dataResponse(ref.watch(restApiProvider).getUser(id));
  //   return result;
  // }

  // Future<List<PostResponse>> getUsers(int page) async {
  //   var result = ref.watch(restApiProvider).getUsers(page);
  //   return result;
  // }
}

// Future<DataResponse<T>> dataResponse<T>(Future<T> callApi) async {
//   try {
//     var result = await callApi;
//     return DataResponse(data: result, isSuccess: true);
//   } on DioError catch (e) {
//     return DataResponse(
//       message: e.message ?? (e.error as SocketException).message,
//       isSuccess: false,
//     );
//   }
// }
