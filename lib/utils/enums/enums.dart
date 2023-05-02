// ignore_for_file: constant_identifier_names

enum AuthProvider{
  email,
  kakao,
  naver,
  apple
}

enum UrlType {
  internet('인터넷'),
  tel('전화'),
  sms('문자'),
  email('이메일');

  final String value;

  const UrlType(this.value);

  @override
  String toString() {
    return value;
  }
}

enum SortBy{
  ID,
  NAME,
  POPULAR,
  DATETIME,
  SEQUENCE
}

enum SortDirection{
  ASC,
  DESC
}

enum UtmDeviceType{
  UNMANNED_AIRCRAFT,
  UNMANNED_HELICOPTER,
  UNMANNED_MULTICOPTER,
  UNMANNED_AIRSHIP,
}

enum UtmUimStatus{
  REQUESTED,
  APPROVED,
  REJECTED,
  IN_OPERATION,
  EXPIRED,
  CANCELED,
  FINISHED,
}

