import 'package:dio/dio.dart';
import 'package:lottokinggpt/4_datasource/remote/rest_client.dart';
import 'package:lottokinggpt/index.dart';

final restApiProvider = Provider<RestClient>((ref) {
  // Provide a dio instance
  final dio = Dio();
  // dio instance to request token
  final tokenDio = Dio();

  dio.options.baseUrl = endPoint;
  // dio.options.headers["Demo-Header"] = "demo header";
  dio.options.connectTimeout = const Duration(seconds: 5);
  dio.options.receiveTimeout = const Duration(seconds: 3);

  tokenDio.options = dio.options;

  // TODO 토큰 작업 후 주석 해제
  // dio.interceptors.add(
  //   QueuedInterceptorsWrapper(
  //     onRequest: (options, handler) async {
  //       print('REQUEST[${options.method}] => PATH: ${options.path}');

  //       String? token = ref.read(localRepositoryProvider).getToken();

  //       if (token == null) {
  //         final result = await tokenDio.get('/token');

  //         if (result.statusCode != null && result.statusCode! ~/ 100 == 2) {
  //           /// assume `token` is in response body
  //           final body = jsonDecode(result.data) as Map<String, dynamic>?;

  //           if (body != null && body.containsKey('data')) {
  //             token = body['data']['token'];
  //             options.headers['Authorization'] = token;
  //             print('request token succeed, value: $token');
  //             print('continue to perform request：path:${options.path}，baseURL:${options.path}');
  //             ref.read(localRepositoryProvider).setToken(token!);
  //             return handler.next(options);
  //           }
  //         }

  //         return handler.reject(
  //           DioError(requestOptions: result.requestOptions),
  //           true,
  //         );
  //       } else {
  //         options.headers['Authorization'] = token;
  //         handler.next(options);
  //       }
  //     },
  //     onResponse: (response, handler) {
  //       print('RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
  //       return handler.next(response);
  //     },
  //     onError: (DioError err, handler) async {
  //       print('ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');
  //       if (err.response?.statusCode == 401) {
  //         // If a 401 response is received, refresh the access token
  //         String newAccessToken = await refreshToken();

  //         // Update the request header with the new access token
  //         err.requestOptions.headers['Authorization'] = 'Bearer $newAccessToken';

  //         // Repeat the request with the updated header
  //         return handler.resolve(await dio.fetch(err.requestOptions));
  //       }
  //       return handler.next(err);
  //     },
  //   ),
  // );

  final client = RestClient(dio);
  return client;
});

Future<String> refreshToken() async {
  // Perform a request to the refresh token endpoint and return the new access token.
  // You can replace this with your own implementation.
  return 'your_new_access_token';
}
