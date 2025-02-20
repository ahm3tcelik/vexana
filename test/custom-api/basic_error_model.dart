import 'package:vexana/vexana.dart';

class BasicErrorModel extends INetworkModel<BasicErrorModel> {
  int? statusCode;
  String? message;
  String? screenMessage;

  BasicErrorModel({this.statusCode, this.message, this.screenMessage});

  BasicErrorModel.fromJson(Map<String, dynamic>? json) {
    statusCode = json!['statusCode'] as int?;
    message = json['message'] as String?;
    screenMessage = json['screenMessage'] as String?;
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['statusCode'] = statusCode;
    data['message'] = message;
    data['screenMessage'] = screenMessage;
    return data;
  }

  @override
  BasicErrorModel fromJson(Map<String, Object>? json) => BasicErrorModel.fromJson(json);
}
