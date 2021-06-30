class Res {
  bool flag = true;
  String? msg;
  int? code;
  dynamic data;

  Res({
    this.flag = true,
    this.msg,
    this.code,
    this.data
  });

  factory Res.fromJson(Map<String, dynamic> parsedJson) {
    return Res(
      flag: parsedJson['flag'],
      msg: parsedJson['msg'],
      code: parsedJson['code'],
      data: parsedJson['data']
    );
  }

  factory Res.failed() {
    return Res(
      flag: false,
      msg: 'failed',
      code: 500,
      data: null,
    );
  }
}
