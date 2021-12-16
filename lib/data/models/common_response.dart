



class CommonResponse {
  String? message;

  CommonResponse({
    this.message});

  CommonResponse.fromJson(dynamic json) {
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['message'] = message;
    return map;
  }

}