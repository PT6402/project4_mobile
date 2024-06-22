class ResetPasswordReq {
  String? email;
  String? code;
  String? newPassword;
  String? accessToken;

  ResetPasswordReq({this.email, this.code, this.newPassword, this.accessToken});
}
