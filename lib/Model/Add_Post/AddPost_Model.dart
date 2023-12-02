class AddPost_Model {
  Data? data;
  List<String>? pics;

  AddPost_Model({this.data});

  AddPost_Model.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? key;
  String? title;
  String? sharingLink;
  String? factoryYear;
  bool? isFavrotied;
  dynamic deletedAt;
  bool? isFollowing;
  bool? isVisited;
  dynamic likeType;
  String? status;
  String? statusKey;
  String? createdAt;
  String? updatedAt;
  String? image;
  List<Null>? pics;
  String? isDouble;
  String? gearType;
  String? gearTypeKey;
  String? fuelType;
  String? fuelTypeKey;
  String? isGuaranteed;
  int? likes;
  int? dislikes;
  int? followersCount;
  String? content;
  dynamic carAgency;
  Department? department;
  Region? region;
  Region? city;
  String? adType;
  String? adTypeKey;
  Department? parentCategory;
  Department? subCategory;
  Department? admodel;
  String? price;
  dynamic adStatus;
  int? setPrice;
  String? allowComments;
  String? showMobile;
  String? mobileNumber;
  Customer? customer;
  int? views;
  dynamic district;
  String? commission;

  Data(
      {this.key,
      this.title,
      this.sharingLink,
      this.factoryYear,
      this.isFavrotied,
      this.deletedAt,
      this.isFollowing,
      this.isVisited,
      this.likeType,
      this.status,
      this.statusKey,
      this.createdAt,
      this.updatedAt,
      this.image,
      this.pics,
      this.isDouble,
      this.gearType,
      this.gearTypeKey,
      this.fuelType,
      this.fuelTypeKey,
      this.isGuaranteed,
      this.likes,
      this.dislikes,
      this.followersCount,
      this.content,
      this.carAgency,
      this.department,
      this.region,
      this.city,
      this.adType,
      this.adTypeKey,
      this.parentCategory,
      this.subCategory,
      this.admodel,
      this.price,
      this.adStatus,
      this.setPrice,
      this.allowComments,
      this.showMobile,
      this.mobileNumber,
      this.customer,
      this.views,
      this.district,
      this.commission});

  Data.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    title = json['title'];
    sharingLink = json['sharing_link'];
    factoryYear = json['factory_year'];
    isFavrotied = json['is_favrotied'];
    deletedAt = json['deleted_at'];
    isFollowing = json['is_following'];
    isVisited = json['is_visited'];
    likeType = json['like_type'];
    status = json['status'];
    statusKey = json['status_key'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    image = json['image'];
    isDouble = json['is_double'];
    gearType = json['gear_type'];
    gearTypeKey = json['gear_type_key'];
    fuelType = json['fuel_type'];
    fuelTypeKey = json['fuel_type_key'];
    isGuaranteed = json['is_guaranteed'];
    likes = json['likes'];
    dislikes = json['dislikes'];
    followersCount = json['followers_count'];
    content = json['content'];
    carAgency = json['car_agency'];
    department = json['department'] != null
        ? new Department.fromJson(json['department'])
        : null;
    region =
        json['region'] != null ? new Region.fromJson(json['region']) : null;
    city = json['city'] != null ? new Region.fromJson(json['city']) : null;
    adType = json['ad_type'];
    adTypeKey = json['ad_type_key'];
    parentCategory = json['parent_category'] != null
        ? new Department.fromJson(json['parent_category'])
        : null;
    subCategory = json['sub_category'] != null
        ? new Department.fromJson(json['sub_category'])
        : null;
    admodel = json['admodel'] != null
        ? new Department.fromJson(json['admodel'])
        : null;
    price = json['price'];
    adStatus = json['ad_status'];
    setPrice = json['set_price'];
    allowComments = json['allow_comments'];
    showMobile = json['show_mobile'];
    mobileNumber = json['mobile_number'];
    customer = json['customer'] != null
        ? new Customer.fromJson(json['customer'])
        : null;
    views = json['views'];
    district = json['district'];
    commission = json['commission'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = this.key;
    data['title'] = this.title;
    data['sharing_link'] = this.sharingLink;
    data['factory_year'] = this.factoryYear;
    data['is_favrotied'] = this.isFavrotied;
    data['deleted_at'] = this.deletedAt;
    data['is_following'] = this.isFollowing;
    data['is_visited'] = this.isVisited;
    data['like_type'] = this.likeType;
    data['status'] = this.status;
    data['status_key'] = this.statusKey;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['image'] = this.image;
    data['is_double'] = this.isDouble;
    data['gear_type'] = this.gearType;
    data['gear_type_key'] = this.gearTypeKey;
    data['fuel_type'] = this.fuelType;
    data['fuel_type_key'] = this.fuelTypeKey;
    data['is_guaranteed'] = this.isGuaranteed;
    data['likes'] = this.likes;
    data['dislikes'] = this.dislikes;
    data['followers_count'] = this.followersCount;
    data['content'] = this.content;
    data['car_agency'] = this.carAgency;
    if (this.department != null) {
      data['department'] = this.department!.toJson();
    }
    if (this.region != null) {
      data['region'] = this.region!.toJson();
    }
    if (this.city != null) {
      data['city'] = this.city!.toJson();
    }
    data['ad_type'] = this.adType;
    data['ad_type_key'] = this.adTypeKey;
    if (this.parentCategory != null) {
      data['parent_category'] = this.parentCategory!.toJson();
    }
    if (this.subCategory != null) {
      data['sub_category'] = this.subCategory!.toJson();
    }
    if (this.admodel != null) {
      data['admodel'] = this.admodel!.toJson();
    }
    data['price'] = this.price;
    data['ad_status'] = this.adStatus;
    data['set_price'] = this.setPrice;
    data['allow_comments'] = this.allowComments;
    data['show_mobile'] = this.showMobile;
    data['mobile_number'] = this.mobileNumber;
    if (this.customer != null) {
      data['customer'] = this.customer!.toJson();
    }
    data['views'] = this.views;
    data['district'] = this.district;
    data['commission'] = this.commission;
    return data;
  }
}

class Department {
  int? key;
  String? title;

  Department({this.key, this.title});

  Department.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = this.key;
    data['title'] = this.title;
    return data;
  }
}

class Region {
  int? key;
  String? name;

  Region({this.key, this.name});

  Region.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = this.key;
    data['name'] = this.name;
    return data;
  }
}

class Customer {
  int? key;
  int? id;
  String? status;
  String? sharingLink;
  bool? isFollowing;
  int? rating;
  String? name;
  String? email;
  String? avatar;
  String? firstName;
  String? lastName;
  String? mobile;
  String? createdAt;

  Customer(
      {this.key,
      this.id,
      this.status,
      this.sharingLink,
      this.isFollowing,
      this.rating,
      this.name,
      this.email,
      this.avatar,
      this.firstName,
      this.lastName,
      this.mobile,
      this.createdAt});

  Customer.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    id = json['id'];
    status = json['status'];
    sharingLink = json['sharing_link'];
    isFollowing = json['is_following'];
    rating = json['rating'];
    name = json['name'];
    email = json['email'];
    avatar = json['avatar'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    mobile = json['mobile'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = this.key;
    data['id'] = this.id;
    data['status'] = this.status;
    data['sharing_link'] = this.sharingLink;
    data['is_following'] = this.isFollowing;
    data['rating'] = this.rating;
    data['name'] = this.name;
    data['email'] = this.email;
    data['avatar'] = this.avatar;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['mobile'] = this.mobile;
    data['created_at'] = this.createdAt;
    return data;
  }
}
