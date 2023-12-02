class User_Login {
  String? token;
  User? user;

  User_Login({this.token, this.user});

  User_Login.fromJson(Map<dynamic, dynamic> json) {
    token = json['token'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  int? key;
  String? sharingLink;
  bool? isFollowing;
  String? email;
  String? avatar;
  int? followersCount;
  String? fullName;
  String? firstName;
  String? lastName;
  String? accountVerifiedAt;
  String? status;
  String? mobile;
  String? fullMobileNumber;
  String? deviceId;
  String? countryCode;
  int? rating;
  String? type;

  User(
      {this.key,
      this.sharingLink,
      this.isFollowing,
      this.email,
      this.avatar,
      this.followersCount,
      this.fullName,
      this.firstName,
      this.lastName,
      this.accountVerifiedAt,
      this.status,
      this.mobile,
      this.fullMobileNumber,
      this.deviceId,
      this.countryCode,
      this.rating});

  User.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    sharingLink = json['sharing_link'];
    isFollowing = json['is_following'];
    email = json['email'];
    avatar = json['avatar'];
    followersCount = json['followers_count'];
    fullName = json['full_name'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    accountVerifiedAt = json['account_verified_at'];
    status = json['status'];
    mobile = json['mobile'];
    fullMobileNumber = json['full_mobile_number'];
    deviceId = json['device_id'];
    countryCode = json['country_code'];
    rating = json['rating'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = this.key;
    data['sharing_link'] = this.sharingLink;
    data['is_following'] = this.isFollowing;
    data['email'] = this.email;
    data['avatar'] = this.avatar;
    data['followers_count'] = this.followersCount;
    data['full_name'] = this.fullName;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['account_verified_at'] = this.accountVerifiedAt;
    data['status'] = this.status;
    data['mobile'] = this.mobile;
    data['full_mobile_number'] = this.fullMobileNumber;
    data['device_id'] = this.deviceId;
    data['country_code'] = this.countryCode;
    data['rating'] = this.rating;
    return data;
  }
}
