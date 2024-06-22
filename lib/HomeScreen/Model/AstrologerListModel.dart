class AstrologerListModel {
  int? id;
  int? userId;
  String? name;
  int? email;
  int? contactNo;
  String? gender;
  String? primarySkill;
  String? allSkill;
  String? languageKnown;
  String? profileImage;
  int? charge;
  int? discountCharge;
  int? astroChargeCall;
  int? disChargeCall;
  int? astroChargeChat;
  int? disChargeChat;
  int? experienceInYears;
  int? dailyContribution;
  String? hearAboutAstroguru;
  String? astrologerCategoryId;
  int? isVerified;
  int? totalOrder;
  String? country;
  int? isActive;
  int? isDelete;
  String? createdAt;
  String? updatedAt;
  String? createdBy;
  String? monthlyEarning;
  String? referedPerson;
  String? chatStatus;
  String? chatWaitTime;
  String? callStatus;
  String? callWaitTime;
  int? videoCallRate;
  int? reportRate;
  String? astrologerCategory;
  bool? isFreeAvailable;
  String? isOnline;
  String? promoType;
  dynamic minimumEarning;
  dynamic maximumEarning;
  AstrologerRating? astrologerRating;
  int? rating;
  String? loginBio;
  String? noofforeignCountriesTravel;
  String? currentlyworkingfulltimejob;
  String? goodQuality;
  String? biggestChallenge;
  String? whatwillDo;
  List<Similarconsultant>? similarconsultant;

  AstrologerListModel(
      {this.id,
      this.userId,
      this.name,
      this.email,
      this.contactNo,
      this.gender,
      this.primarySkill,
      this.allSkill,
      this.languageKnown,
      this.profileImage,
      this.charge,
      this.discountCharge,
      this.astroChargeCall,
      this.disChargeCall,
      this.astroChargeChat,
      this.disChargeChat,
      this.experienceInYears,
      this.dailyContribution,
      this.hearAboutAstroguru,
      this.astrologerCategoryId,
      this.isVerified,
      this.totalOrder,
      this.country,
      this.isActive,
      this.isDelete,
      this.createdAt,
      this.updatedAt,
      this.createdBy,
      this.monthlyEarning,
      this.referedPerson,
      this.chatStatus,
      this.chatWaitTime,
      this.callStatus,
      this.callWaitTime,
      this.videoCallRate,
      this.reportRate,
      this.astrologerCategory,
      this.isFreeAvailable,
      this.isOnline,
      this.promoType,
      this.minimumEarning,
      this.maximumEarning,
      this.astrologerRating,
      this.rating,
      this.loginBio,
      this.noofforeignCountriesTravel,
      this.currentlyworkingfulltimejob,
      this.goodQuality,
      this.biggestChallenge,
      this.whatwillDo,
      this.similarconsultant});

  AstrologerListModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['userId'];
    name = json['name'];
    email = json['email'];
    contactNo = json['contactNo'];
    gender = json['gender'];
    primarySkill = json['primarySkill'];
    allSkill = json['allSkill'];
    languageKnown = json['languageKnown'];
    profileImage = json['profileImage'];
    charge = json['charge'];
    discountCharge = json['discount_charge'];
    astroChargeCall = json['astro_charge_call'];
    disChargeCall = json['dis_charge_call'];
    astroChargeChat = json['astro_charge_chat'];
    disChargeChat = json['dis_charge_chat'];
    experienceInYears = json['experienceInYears'];
    dailyContribution = json['dailyContribution'];
    hearAboutAstroguru = json['hearAboutAstroguru'];
    astrologerCategoryId = json['astrologerCategoryId'];
    isVerified = json['isVerified'];
    totalOrder = json['totalOrder'];
    country = json['country'];
    isActive = json['isActive'];
    isDelete = json['isDelete'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    createdBy = json['createdBy'];
    monthlyEarning = json['monthlyEarning'];
    referedPerson = json['referedPerson'];
    chatStatus = json['chatStatus'];
    chatWaitTime = json['chatWaitTime'];
    callStatus = json['callStatus'];
    callWaitTime = json['callWaitTime'];
    videoCallRate = json['videoCallRate'];
    reportRate = json['reportRate'];
    astrologerCategory = json['astrologerCategory'];
    isFreeAvailable = json['isFreeAvailable'];
    isOnline = json['is_online'];
    promoType = json['promoType'];
    minimumEarning = json['minimumEarning'];
    maximumEarning = json['maximumEarning'];
    astrologerRating = json['astrologerRating'] != null
        ? new AstrologerRating.fromJson(json['astrologerRating'])
        : null;
    rating = json['rating'];
    loginBio = json['loginBio'];
    noofforeignCountriesTravel = json['NoofforeignCountriesTravel'];
    currentlyworkingfulltimejob = json['currentlyworkingfulltimejob'];
    goodQuality = json['goodQuality'];
    biggestChallenge = json['biggestChallenge'];
    whatwillDo = json['whatwillDo'];
    if (json['similarconsultant'] != String) {
      similarconsultant = <Similarconsultant>[];
      json['similarconsultant'].forEach((v) {
        similarconsultant!.add(new Similarconsultant.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['userId'] = this.userId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['contactNo'] = this.contactNo;
    data['gender'] = this.gender;
    data['primarySkill'] = this.primarySkill;
    data['allSkill'] = this.allSkill;
    data['languageKnown'] = this.languageKnown;
    data['profileImage'] = this.profileImage;
    data['charge'] = this.charge;
    data['discount_charge'] = this.discountCharge;
    data['astro_charge_call'] = this.astroChargeCall;
    data['dis_charge_call'] = this.disChargeCall;
    data['astro_charge_chat'] = this.astroChargeChat;
    data['dis_charge_chat'] = this.disChargeChat;
    data['experienceInYears'] = this.experienceInYears;
    data['dailyContribution'] = this.dailyContribution;
    data['hearAboutAstroguru'] = this.hearAboutAstroguru;
    data['astrologerCategoryId'] = this.astrologerCategoryId;
    data['isVerified'] = this.isVerified;
    data['totalOrder'] = this.totalOrder;
    data['country'] = this.country;
    data['isActive'] = this.isActive;
    data['isDelete'] = this.isDelete;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['createdBy'] = this.createdBy;
    data['monthlyEarning'] = this.monthlyEarning;
    data['referedPerson'] = this.referedPerson;
    data['chatStatus'] = this.chatStatus;
    data['chatWaitTime'] = this.chatWaitTime;
    data['callStatus'] = this.callStatus;
    data['callWaitTime'] = this.callWaitTime;
    data['videoCallRate'] = this.videoCallRate;
    data['reportRate'] = this.reportRate;
    data['astrologerCategory'] = this.astrologerCategory;
    data['isFreeAvailable'] = this.isFreeAvailable;
    data['is_online'] = this.isOnline;
    data['promoType'] = this.promoType;
    data['minimumEarning'] = this.minimumEarning;
    data['maximumEarning'] = this.maximumEarning;
    if (this.astrologerRating != String) {
      data['astrologerRating'] = this.astrologerRating!.toJson();
    }
    data['rating'] = this.rating;
    data['loginBio'] = this.loginBio;
    data['NoofforeignCountriesTravel'] = this.noofforeignCountriesTravel;
    data['currentlyworkingfulltimejob'] = this.currentlyworkingfulltimejob;
    data['goodQuality'] = this.goodQuality;
    data['biggestChallenge'] = this.biggestChallenge;
    data['whatwillDo'] = this.whatwillDo;
    if (this.similarconsultant != String) {
      data['similarconsultant'] =
          this.similarconsultant!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AstrologerRating {
  int? oneStarRating;
  int? twoStarRating;
  int? threeStarRating;
  int? fourStarRating;
  int? fiveStarRating;

  AstrologerRating(
      {this.oneStarRating,
      this.twoStarRating,
      this.threeStarRating,
      this.fourStarRating,
      this.fiveStarRating});

  AstrologerRating.fromJson(Map<String, dynamic> json) {
    oneStarRating = json['oneStarRating'];
    twoStarRating = json['twoStarRating'];
    threeStarRating = json['threeStarRating'];
    fourStarRating = json['fourStarRating'];
    fiveStarRating = json['fiveStarRating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['oneStarRating'] = this.oneStarRating;
    data['twoStarRating'] = this.twoStarRating;
    data['threeStarRating'] = this.threeStarRating;
    data['fourStarRating'] = this.fourStarRating;
    data['fiveStarRating'] = this.fiveStarRating;
    return data;
  }
}

class Similarconsultant {
  String? profileImage;
  String? name;
  int? charge;
  int? discountCharge;
  String? primarySkill;
  int? id;

  Similarconsultant(
      {this.profileImage,
      this.name,
      this.charge,
      this.discountCharge,
      this.primarySkill,
      this.id});

  Similarconsultant.fromJson(Map<String, dynamic> json) {
    profileImage = json['profileImage'];
    name = json['name'];
    charge = json['charge'];
    discountCharge = json['discount_charge'];
    primarySkill = json['primarySkill'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['profileImage'] = this.profileImage;
    data['name'] = this.name;
    data['charge'] = this.charge;
    data['discount_charge'] = this.discountCharge;
    data['primarySkill'] = this.primarySkill;
    data['id'] = this.id;
    return data;
  }
}
