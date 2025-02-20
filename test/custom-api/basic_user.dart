import 'package:vexana/vexana.dart';

class BasicUser extends INetworkModel<BasicUser> {
  String? user;

  BasicUser({this.user});

  BasicUser.fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return;
    }
    user = json['user'] as String?;
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['user'] = user;
    return data;
  }

  @override
  BasicUser fromJson(Map<String, Object>? json) => BasicUser.fromJson(json);
}
