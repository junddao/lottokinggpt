// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _RestClient implements RestClient {
  _RestClient(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<DataResponse<UtmUmsSendVerificationEmailRequest>> postEmail(
      UtmUmsSendVerificationEmailRequest request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DataResponse<UtmUmsSendVerificationEmailRequest>>(
            Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
                .compose(
                  _dio.options,
                  '/v1/ums/verification/email',
                  queryParameters: queryParameters,
                  data: _data,
                )
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse<UtmUmsSendVerificationEmailRequest>.fromJson(
      _result.data!,
      (json) => UtmUmsSendVerificationEmailRequest.fromJson(
          json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<DataResponse<UtmUmsVerifyVerificationEmailRequest>> postEmailVerified(
      UtmUmsVerifyVerificationEmailRequest request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DataResponse<UtmUmsVerifyVerificationEmailRequest>>(
            Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
                .compose(
                  _dio.options,
                  '/v1/ums/verification/email/verified',
                  queryParameters: queryParameters,
                  data: _data,
                )
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse<UtmUmsVerifyVerificationEmailRequest>.fromJson(
      _result.data!,
      (json) => UtmUmsVerifyVerificationEmailRequest.fromJson(
          json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<DataResponse<UtmUmsSendVerificationPhoneRequest>> postPhone(
      UtmUmsSendVerificationPhoneRequest request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DataResponse<UtmUmsSendVerificationPhoneRequest>>(
            Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
                .compose(
                  _dio.options,
                  '/v1/ums/verification/phone',
                  queryParameters: queryParameters,
                  data: _data,
                )
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse<UtmUmsSendVerificationPhoneRequest>.fromJson(
      _result.data!,
      (json) => UtmUmsSendVerificationPhoneRequest.fromJson(
          json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<DataResponse<UtmUmsVerifyVerificationPhoneRequest>> postPhoneVerified(
      UtmUmsVerifyVerificationPhoneRequest request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DataResponse<UtmUmsVerifyVerificationPhoneRequest>>(
            Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
                .compose(
                  _dio.options,
                  '/v1/ums/verification/phone/verified',
                  queryParameters: queryParameters,
                  data: _data,
                )
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse<UtmUmsVerifyVerificationPhoneRequest>.fromJson(
      _result.data!,
      (json) => UtmUmsVerifyVerificationPhoneRequest.fromJson(
          json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<DataResponse<UtmUmsUserSignInResponse>> postSignIn(
      UtmUmsUserSignInRequest request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DataResponse<UtmUmsUserSignInResponse>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/v1/ums/user/sign/in',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse<UtmUmsUserSignInResponse>.fromJson(
      _result.data!,
      (json) => UtmUmsUserSignInResponse.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<DataResponse<UtmUmsUserSignInResponse>> postSignUp(
      UtmUmsUserSignUpRequest request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DataResponse<UtmUmsUserSignInResponse>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/v1/ums/user/sign/up',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse<UtmUmsUserSignInResponse>.fromJson(
      _result.data!,
      (json) => UtmUmsUserSignInResponse.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<DataResponse<UtmUmsUserSignInResponse>> patchRefresh(
      UtmUmsRefreshUserSignRequest request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DataResponse<UtmUmsUserSignInResponse>>(Options(
      method: 'PATCH',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/v1/ums/user/sign/refresh',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse<UtmUmsUserSignInResponse>.fromJson(
      _result.data!,
      (json) => UtmUmsUserSignInResponse.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<DataResponse<SuccessResponse>> postSignOut() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DataResponse<SuccessResponse>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/v1/ums/user/sign/in',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse<SuccessResponse>.fromJson(
      _result.data!,
      (json) => SuccessResponse.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<DataResponse<UtmUmsMyUserResponse>> getMe() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DataResponse<UtmUmsMyUserResponse>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/v1/ums/user/me',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse<UtmUmsMyUserResponse>.fromJson(
      _result.data!,
      (json) => UtmUmsMyUserResponse.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<DataResponse<SuccessResponse>> deleteMe() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DataResponse<SuccessResponse>>(Options(
      method: 'DELETE',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/v1/ums/user/me',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse<SuccessResponse>.fromJson(
      _result.data!,
      (json) => SuccessResponse.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<DataResponse<SuccessResponse>> patchEmail(
      UtmUmsUpdateMyUserEmailRequest request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DataResponse<SuccessResponse>>(Options(
      method: 'PATCH',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/v1/ums/user/me/email',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse<SuccessResponse>.fromJson(
      _result.data!,
      (json) => SuccessResponse.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<DataResponse<SuccessResponse>> patchPhone(
      UtmUmsUpdateMyUserPhoneRequest request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DataResponse<SuccessResponse>>(Options(
      method: 'PATCH',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/v1/ums/user/me/phone',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse<SuccessResponse>.fromJson(
      _result.data!,
      (json) => SuccessResponse.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<DataResponse<SuccessResponse>> patchPassword(
      UtmUmsUpdateMyUserPasswordRequest request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DataResponse<SuccessResponse>>(Options(
      method: 'PATCH',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/v1/ums/user/me/email',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse<SuccessResponse>.fromJson(
      _result.data!,
      (json) => SuccessResponse.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<DataResponse<SuccessResponse>> patchPasswordByEmail(
      UtmUmsResetUserPasswordByEmailRequest request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DataResponse<SuccessResponse>>(Options(
      method: 'PATCH',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/v1/ums/user/password/by-email',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse<SuccessResponse>.fromJson(
      _result.data!,
      (json) => SuccessResponse.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<DataResponse<SuccessResponse>> patchPasswordByPhone(
      UtmUmsResetUserPasswordByPhoneRequest request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DataResponse<SuccessResponse>>(Options(
      method: 'PATCH',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/v1/ums/user/password/by-phone',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse<SuccessResponse>.fromJson(
      _result.data!,
      (json) => SuccessResponse.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<DataResponse<UtmUmsUimResponse>> postUim(
      UtmUmsCreateUimRequest request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DataResponse<UtmUmsUimResponse>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/v1/ums/uim',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse<UtmUmsUimResponse>.fromJson(
      _result.data!,
      (json) => UtmUmsUimResponse.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<DataResponse<UtmUmsUimResponse>> getUim(String uimId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DataResponse<UtmUmsUimResponse>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/v1/ums/uim/${uimId}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse<UtmUmsUimResponse>.fromJson(
      _result.data!,
      (json) => UtmUmsUimResponse.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<DataResponse<UtmUmsUimsResponse>> getUims(
    num itemCount,
    num pageNumber,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'itemCount': itemCount,
      r'pageNumber': pageNumber,
    };
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DataResponse<UtmUmsUimsResponse>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/v1/ums/uims',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse<UtmUmsUimsResponse>.fromJson(
      _result.data!,
      (json) => UtmUmsUimsResponse.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<DataResponse<UtmUmsUimsCountResponse>> getUimsCount() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DataResponse<UtmUmsUimsCountResponse>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/v1/ums/uims/count',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse<UtmUmsUimsCountResponse>.fromJson(
      _result.data!,
      (json) => UtmUmsUimsCountResponse.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<DataResponse<SuccessResponse>> patchUimCanceled(String uimId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DataResponse<SuccessResponse>>(Options(
      method: 'PATCH',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/v1/ums/uim/${uimId}/canceled',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse<SuccessResponse>.fromJson(
      _result.data!,
      (json) => SuccessResponse.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<DataResponse<SuccessResponse>> patchUimFinished(
    String uimId,
    UtmUmsFinishUimRequest request,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DataResponse<SuccessResponse>>(Options(
      method: 'PATCH',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/v1/ums/uim/${uimId}/finished',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse<SuccessResponse>.fromJson(
      _result.data!,
      (json) => SuccessResponse.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<DataResponse<UtmUmsExtendUimPeriodRequest>> patchUimIssuancePeriodTo(
    String uimId,
    UtmUmsExtendUimPeriodRequest request,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DataResponse<UtmUmsExtendUimPeriodRequest>>(Options(
      method: 'PATCH',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/v1/ums/uim/${uimId}/issuance-period-to',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse<UtmUmsExtendUimPeriodRequest>.fromJson(
      _result.data!,
      (json) =>
          UtmUmsExtendUimPeriodRequest.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<DataResponse<UtmUmsFlightResponse>> getFlight(
      String approvalNumber) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'approvalNumber': approvalNumber
    };
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DataResponse<UtmUmsFlightResponse>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/v1/ums/flight',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse<UtmUmsFlightResponse>.fromJson(
      _result.data!,
      (json) => UtmUmsFlightResponse.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<DataResponse<UtmUmsLocalsResponse>> getLocal(
    num longitude,
    num latitude,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'longitude': longitude,
      r'latitude': latitude,
    };
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DataResponse<UtmUmsLocalsResponse>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/v1/ums/local',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse<UtmUmsLocalsResponse>.fromJson(
      _result.data!,
      (json) => UtmUmsLocalsResponse.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<DataResponse<UtmUmsLocalsResponse>> getLocals(
    num itemCount,
    num pageNumber,
    num address,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'itemCount': itemCount,
      r'pageNumber': pageNumber,
      r'address': address,
    };
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DataResponse<UtmUmsLocalsResponse>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/v1/ums/locals',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse<UtmUmsLocalsResponse>.fromJson(
      _result.data!,
      (json) => UtmUmsLocalsResponse.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<DataResponse<UtmUmsKindexResponse>> getWeatherKindex() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DataResponse<UtmUmsKindexResponse>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/v1/ums/weather/kindex',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse<UtmUmsKindexResponse>.fromJson(
      _result.data!,
      (json) => UtmUmsKindexResponse.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<DataResponse<UtmUmsMagnetismResponse>> getWeatherMagnetism() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DataResponse<UtmUmsMagnetismResponse>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/v1/ums/weather/magnetism',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse<UtmUmsMagnetismResponse>.fromJson(
      _result.data!,
      (json) => UtmUmsMagnetismResponse.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
