class VerifyOtp {
  String? phone;
  String? otp;

  VerifyOtp({this.phone, this.otp});

  VerifyOtp.fromJson(Map<String, dynamic> json) {
    phone = json['phone'];
    otp = json['otp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['phone'] = phone;
    data['otp'] = otp;
    return data;
  }
}