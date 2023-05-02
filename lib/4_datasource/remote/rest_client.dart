import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:lottokinggpt/models/data_response.dart';
import 'package:lottokinggpt/models/requests/utm_ums_create_uim_request.dart';
import 'package:lottokinggpt/models/requests/utm_ums_extend_uim_period_request.dart';
import 'package:lottokinggpt/models/requests/utm_ums_finish_uim_request.dart';
import 'package:lottokinggpt/models/requests/utm_ums_refresh_user_sign_request.dart';
import 'package:lottokinggpt/models/requests/utm_ums_reset_user_password_by_email_request.dart';
import 'package:lottokinggpt/models/requests/utm_ums_reset_user_password_by_phone_request.dart';
import 'package:lottokinggpt/models/requests/utm_ums_send_verification_email_request.dart';
import 'package:lottokinggpt/models/requests/utm_ums_send_verification_phone_request.dart';
import 'package:lottokinggpt/models/requests/utm_ums_update_my_user_email_request.dart';
import 'package:lottokinggpt/models/requests/utm_ums_update_my_user_password_request.dart';
import 'package:lottokinggpt/models/requests/utm_ums_update_my_user_phone_request.dart';
import 'package:lottokinggpt/models/requests/utm_ums_user_sign_in_request.dart';
import 'package:lottokinggpt/models/requests/utm_ums_user_sign_up_request.dart';
import 'package:lottokinggpt/models/requests/utm_ums_verify_verification_email_request.dart';
import 'package:lottokinggpt/models/requests/utm_ums_verify_verification_phone_request.dart';
import 'package:lottokinggpt/models/responses/responses.dart';
import 'package:lottokinggpt/models/responses/success_response.dart';
import 'package:lottokinggpt/models/responses/utm_ums_flight_response.dart';
import 'package:lottokinggpt/models/responses/utm_ums_kindex_response.dart';
import 'package:lottokinggpt/models/responses/utm_ums_locals_response.dart';
import 'package:lottokinggpt/models/responses/utm_ums_magnetism_response.dart';
import 'package:lottokinggpt/models/responses/utm_ums_my_user_response.dart';
import 'package:lottokinggpt/models/responses/utm_ums_uim_response.dart';
import 'package:lottokinggpt/models/responses/utm_ums_uims_count_response.dart';
import 'package:lottokinggpt/models/responses/utm_ums_uims_response.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  // UTM UMS Verification

  /// 사용자 이메일 인증 이메일 발송
  @POST('/v1/ums/verification/email')
  Future<DataResponse<UtmUmsSendVerificationEmailRequest>> postEmail(
      @Body() UtmUmsSendVerificationEmailRequest request);

  /// 사용자 이메일 인증 이메일 확인
  @POST('/v1/ums/verification/email/verified')
  Future<DataResponse<UtmUmsVerifyVerificationEmailRequest>> postEmailVerified(
      @Body() UtmUmsVerifyVerificationEmailRequest request);

  /// 사용자 휴대 전화 번호 인증 SMS 발송
  @POST('/v1/ums/verification/phone')
  Future<DataResponse<UtmUmsSendVerificationPhoneRequest>> postPhone(
      @Body() UtmUmsSendVerificationPhoneRequest request);

  /// 사용자 휴대 전화 번호 인증 SMS 확인
  @POST('/v1/ums/verification/phone/verified')
  Future<DataResponse<UtmUmsVerifyVerificationPhoneRequest>> postPhoneVerified(
      @Body() UtmUmsVerifyVerificationPhoneRequest request);

  // UTM UMS User Sign

  /// 사용자 로그인
  @POST('/v1/ums/user/sign/in')
  Future<DataResponse<UtmUmsUserSignInResponse>> postSignIn(@Body() UtmUmsUserSignInRequest request);

  /// 사용자 가입
  @POST('/v1/ums/user/sign/up')
  Future<DataResponse<UtmUmsUserSignInResponse>> postSignUp(@Body() UtmUmsUserSignUpRequest request);

  /// 사용자 인증 정보 갱신
  @PATCH('/v1/ums/user/sign/refresh')
  Future<DataResponse<UtmUmsUserSignInResponse>> patchRefresh(@Body() UtmUmsRefreshUserSignRequest request);

  /// 사용자 로그아웃
  @POST('/v1/ums/user/sign/in')
  Future<DataResponse<SuccessResponse>> postSignOut();

  // UTM UMS User

  /// 사용자인 나의 정보 조회
  @GET('/v1/ums/user/me')
  Future<DataResponse<UtmUmsMyUserResponse>> getMe();

  /// 사용자로서 탈퇴, 사용자인 내 정보 삭제
  @DELETE('/v1/ums/user/me')
  Future<DataResponse<SuccessResponse>> deleteMe();

  /// 사용자인 나의 이메일 수정
  @PATCH('/v1/ums/user/me/email')
  Future<DataResponse<SuccessResponse>> patchEmail(@Body() UtmUmsUpdateMyUserEmailRequest request);

  /// 사용자인 나의 휴대 전화 번호 수정
  @PATCH('/v1/ums/user/me/phone')
  Future<DataResponse<SuccessResponse>> patchPhone(@Body() UtmUmsUpdateMyUserPhoneRequest request);

  /// 사용자인 나의 패스워드 변경
  @PATCH('/v1/ums/user/me/email')
  Future<DataResponse<SuccessResponse>> patchPassword(@Body() UtmUmsUpdateMyUserPasswordRequest request);

  /// 사용자 이메일로 비밀번호 재변경
  @PATCH('/v1/ums/user/password/by-email')
  Future<DataResponse<SuccessResponse>> patchPasswordByEmail(@Body() UtmUmsResetUserPasswordByEmailRequest request);

  /// 사용자 전화번호로 비밀번호 재변경
  @PATCH('/v1/ums/user/password/by-phone')
  Future<DataResponse<SuccessResponse>> patchPasswordByPhone(@Body() UtmUmsResetUserPasswordByPhoneRequest request);

  // UTM UMS UIM

  /// UIM 등록
  @POST('/v1/ums/uim')
  Future<DataResponse<UtmUmsUimResponse>> postUim(@Body() UtmUmsCreateUimRequest request);

  /// UIM 조회
  @GET('/v1/ums/uim/{uimId}')
  Future<DataResponse<UtmUmsUimResponse>> getUim(@Path("uimId") String uimId);

  /// UIM 목록 조회
  @GET('/v1/ums/uims')
  Future<DataResponse<UtmUmsUimsResponse>> getUims(
    @Query("itemCount") num itemCount,
    @Query("pageNumber") num pageNumber,
    // @Query("sortBy") SortBy sortBy,
    // @Query("sortDirection") SortDirection sortDirection,
  );

  /// UIM 수 조회
  @GET('/v1/ums/uims/count')
  Future<DataResponse<UtmUmsUimsCountResponse>> getUimsCount();

  /// UIM 상태를 취소로 설정
  @PATCH('/v1/ums/uim/{uimId}/canceled')
  Future<DataResponse<SuccessResponse>> patchUimCanceled(@Path("uimId") String uimId);

  /// UIM상태를 사용 완료로 설정
  @PATCH('/v1/ums/uim/{uimId}/finished')
  Future<DataResponse<SuccessResponse>> patchUimFinished(
    @Path("uimId") String uimId,
    @Body() UtmUmsFinishUimRequest request,
  );

  /// UIM 발급 기간 연장 신청
  @PATCH('/v1/ums/uim/{uimId}/issuance-period-to')
  Future<DataResponse<UtmUmsExtendUimPeriodRequest>> patchUimIssuancePeriodTo(
    @Path("uimId") String uimId,
    @Body() UtmUmsExtendUimPeriodRequest request,
  );

  // UTM UMS Flight

  /// 비행 정보 조회
  @GET('/v1/ums/flight')
  Future<DataResponse<UtmUmsFlightResponse>> getFlight(
    @Query("approvalNumber") String approvalNumber,
  );

  // UTM UMS Local

  /// 위치 조회
  @GET('/v1/ums/local')
  Future<DataResponse<UtmUmsLocalsResponse>> getLocal(
    @Query("longitude") num longitude,
    @Query("latitude") num latitude,
  );

  /// 위치 목록 조회
  @GET('/v1/ums/locals')
  Future<DataResponse<UtmUmsLocalsResponse>> getLocals(
    @Query("itemCount") num itemCount,
    @Query("pageNumber") num pageNumber,
    @Query("address") num address,
  );

  // UTM UMS Weather

  /// 지구자기장 지수 관측 데이터
  @GET('/v1/ums/weather/kindex')
  Future<DataResponse<UtmUmsKindexResponse>> getWeatherKindex();

  /// 지구자기장 관측 데이터(제주기준)
  @GET('/v1/ums/weather/magnetism')
  Future<DataResponse<UtmUmsMagnetismResponse>> getWeatherMagnetism();
}
