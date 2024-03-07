import 'package:flutter/cupertino.dart';

class landingPageModel {
  Data? data;
  String? msg;
  int? status;

  landingPageModel({this.data, this.msg, this.status});

  landingPageModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    msg = json['msg'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['msg'] = this.msg;
    data['status'] = this.status;
    return data;
  }
}

class Data {
  List<PageContent>? pageContent;
  List<Advertisings>? advertisings;
  List<Projects>? projects;
  List<Partners>? partners;
  List<TraningStatistic>? traningStatistic;
  List<Members>? members;
  bool? hasMorePage;
  int? currentPage;
  List<Activities>? activities;
  bool? hasMorePageGroup;
  int? currentPageGroups;
  List<Groups>? groups;
  List<Questions>? questions;
//  List<Students>? students;
  int? beneficiaries;
  int? women;
  int? project;
  int? socialActivity;

  Data(
      {this.pageContent,
        this.advertisings,
        this.projects,
        this.partners,
        this.traningStatistic,
        this.members,
        this.hasMorePage,
        this.currentPage,
        this.activities,
        this.hasMorePageGroup,
        this.currentPageGroups,
        this.groups,
        this.questions,
       // this.students,
        this.beneficiaries,
        this.women,
        this.project,
        this.socialActivity});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['pageContent'] != null) {
      pageContent = <PageContent>[];
      json['pageContent'].forEach((v) {
        pageContent!.add(new PageContent.fromJson(v));
      });
    }
    if (json['advertisings'] != null) {
      advertisings = <Advertisings>[];
      json['advertisings'].forEach((v) {
        advertisings!.add(new Advertisings.fromJson(v));
      });
    }
    if (json['projects'] != null) {
      projects = <Projects>[];
      json['projects'].forEach((v) {
        projects!.add(new Projects.fromJson(v));
      });
    }
    if (json['partners'] != null) {
      partners = <Partners>[];
      json['partners'].forEach((v) {
        partners!.add(new Partners.fromJson(v));
      });
    }
    if (json['traning_statistic'] != null) {
      traningStatistic = <TraningStatistic>[];
      json['traning_statistic'].forEach((v) {
        traningStatistic!.add(new TraningStatistic.fromJson(v));
      });
    }
    if (json['members'] != null) {
      members = <Members>[];
      json['members'].forEach((v) {
        members!.add(new Members.fromJson(v));
      });
    }
    hasMorePage = json['has_more_page'];
    currentPage = json['current_page'];
    if (json['activities'] != null) {
      activities = <Activities>[];
      json['activities'].forEach((v) {
        activities!.add(new Activities.fromJson(v));
      });
    }
    hasMorePageGroup = json['has_more_page_group'];
    currentPageGroups = json['current_page_groups'];
    if (json['groups'] != null) {
      groups = <Groups>[];
      json['groups'].forEach((v) {
        groups!.add(new Groups.fromJson(v));
      });
    }
    if (json['questions'] != null) {
      questions = <Questions>[];
      json['questions'].forEach((v) {
        questions!.add(new Questions.fromJson(v));
      });
    }
    // if (json['students'] != null) {
    //   students = <Students>[];
    //   json['students'].forEach((v) {
    //     students!.add(new Students.fromJson(v));
    //   });
    // }
    beneficiaries = json['beneficiaries'];
    women = json['women'];
    project = json['project'];
    socialActivity = json['social_activity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.pageContent != null) {
      data['pageContent'] = this.pageContent!.map((v) => v.toJson()).toList();
    }
    if (this.advertisings != null) {
      data['advertisings'] = this.advertisings!.map((v) => v.toJson()).toList();
    }
    if (this.projects != null) {
      data['projects'] = this.projects!.map((v) => v.toJson()).toList();
    }
    if (this.partners != null) {
      data['partners'] = this.partners!.map((v) => v.toJson()).toList();
    }
    if (this.traningStatistic != null) {
      data['traning_statistic'] =
          this.traningStatistic!.map((v) => v.toJson()).toList();
    }
    if (this.members != null) {
      data['members'] = this.members!.map((v) => v.toJson()).toList();
    }
    data['has_more_page'] = this.hasMorePage;
    data['current_page'] = this.currentPage;
    if (this.activities != null) {
      data['activities'] = this.activities!.map((v) => v.toJson()).toList();
    }
    data['has_more_page_group'] = this.hasMorePageGroup;
    data['current_page_groups'] = this.currentPageGroups;
    if (this.groups != null) {
      data['groups'] = this.groups!.map((v) => v.toJson()).toList();
    }
    if (this.questions != null) {
      data['questions'] = this.questions!.map((v) => v.toJson()).toList();
    }
    // if (this.students != null) {
    //   data['students'] = this.students!.map((v) => v.toJson()).toList();
    // }
    data['beneficiaries'] = this.beneficiaries;
    data['women'] = this.women;
    data['project'] = this.project;
    data['social_activity'] = this.socialActivity;
    return data;
  }
}

class PageContent {
  AboutUs? aboutUs;
  String? image;
  Hero? hero;
  AboutUs? overview;
  AboutUs? ourGoals;
 // FacebookLink? facebookLink;
  //FacebookLink? email;
 // FacebookLink? phone;
 // FacebookLink? telephone;
 // ObjectFormData? objectFormData;
 // FacebookLink? key;

  PageContent(
      {this.aboutUs,
        this.image,
        this.hero,
        this.overview,
        this.ourGoals,
        // this.facebookLink,
        // this.email,
        // this.phone,
        // this.telephone,
        // this.objectFormData,
        // this.key
   });

  PageContent.fromJson(Map<String, dynamic> json) {
    aboutUs =
    json['aboutUs'] != null ? new AboutUs.fromJson(json['aboutUs']) : null;
    image = json['image'];
    hero = json['hero'] != null ? new Hero.fromJson(json['hero']) : null;
    overview = json['overview'] != null
        ? new AboutUs.fromJson(json['overview'])
        : null;
    ourGoals = json['ourGoals'] != null
        ? new AboutUs.fromJson(json['ourGoals'])
        : null;
    // facebookLink = json['facebook_link'] != null
    //     ? new FacebookLink.fromJson(json['facebook_link'])
    //     : null;
    // email =
    // json['email'] != null ? new FacebookLink.fromJson(json['email']) : null;
    // phone =
    // json['phone'] != null ? new FacebookLink.fromJson(json['phone']) : null;
    // telephone = json['telephone'] != null
    //     ? new FacebookLink.fromJson(json['telephone'])
    //     : null;
    // objectFormData = json['[object FormData]'] != null
    //     ? new ObjectFormData.fromJson(json['[object FormData]'])
    //     : null;
    // key =
    // json['{key}'] != null ? new FacebookLink.fromJson(json['{key}']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.aboutUs != null) {
      data['aboutUs'] = this.aboutUs!.toJson();
    }
    data['image'] = this.image;
    if (this.hero != null) {
      data['hero'] = this.hero!.toJson();
    }
    if (this.overview != null) {
      data['overview'] = this.overview!.toJson();
    }
    if (this.ourGoals != null) {
      data['ourGoals'] = this.ourGoals!.toJson();
    }
    // if (this.facebookLink != null) {
    //   data['facebook_link'] = this.facebookLink!.toJson();
    // }
    // if (this.email != null) {
    //   data['email'] = this.email!.toJson();
    // }
    // if (this.phone != null) {
    //   data['phone'] = this.phone!.toJson();
    // }
    // if (this.telephone != null) {
    //   data['telephone'] = this.telephone!.toJson();
    // }
    // if (this.objectFormData != null) {
    //   data['[object FormData]'] = this.objectFormData!.toJson();
    // }
    // if (this.key != null) {
    //   data['{key}'] = this.key!.toJson();
    // }
    return data;
  }
}

class AboutUs {
  String? content;
  List<String>? images;

  AboutUs({this.content, this.images});

  AboutUs.fromJson(Map<String, dynamic> json) {
    content = json['content'];
    images = json['images'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['content'] = this.content;
    data['images'] = this.images;
    return data;
  }
}

class Hero {
  String? content;
  List<String>? images;

  Hero({this.content, this.images});

  Hero.fromJson(Map<String, dynamic> json) {
    content = json['content'];
    images = json['images'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['content'] = this.content;
    data['images'] = this.images;
    return data;
  }
}
//
// class FacebookLink {
//   String? content;
//   List? images;
//
//   FacebookLink({this.content, this.images});
//
//   FacebookLink.fromJson(Map<String, dynamic> json) {
//     content = json['content'];
//     if (json['images'] != null) {
//       images = <String>[];
//       json['images'].forEach((v) {
//         images!.add(fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['content'] = this.content;
//     if (this.images != null) {
//       data['images'] = images!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class ObjectFormData {
//   Null? content;
//   List<Null>? images;
//
//   ObjectFormData({this.content, this.images});
//
//   ObjectFormData.fromJson(Map<String, dynamic> json) {
//     content = json['content'];
//     if (json['images'] != null) {
//       images = <Null>[];
//       json['images'].forEach((v) {
//         images!.add(new Null.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['content'] = this.content;
//     if (this.images != null) {
//       data['images'] = this.images!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

class Advertisings {
  int? id;
  String? title;
  String? details;
  String? image;
  String? notes;
  Null? attachment;
  String? deadline;
  String? status;
  String? createdAt;
  String? updatedAt;

  Advertisings(
      {this.id,
        this.title,
        this.details,
        this.image,
        this.notes,
        this.attachment,
        this.deadline,
        this.status,
        this.createdAt,
        this.updatedAt});

  Advertisings.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    details = json['details'];
    image = json['image'];
    notes = json['notes'];
    attachment = json['attachment'];
    deadline = json['deadline'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['details'] = this.details;
    data['image'] = this.image;
    data['notes'] = this.notes;
    data['attachment'] = this.attachment;
    data['deadline'] = this.deadline;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Projects {
  int? id;
  String? title;
  String? description;
  String? image;
  int? budget;
  String? status;
  String? startDate;
  String? endDate;
  List<Partners>? partners;

  Projects(
      {this.id,
        this.title,
        this.description,
        this.image,
        this.budget,
        this.status,
        this.startDate,
        this.endDate,
        this.partners});

  Projects.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    image = json['image'];
    budget = json['budget'];
    status = json['status'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    if (json['partners'] != null) {
      partners = <Partners>[];
      json['partners'].forEach((v) {
        partners!.add(new Partners.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['image'] = this.image;
    data['budget'] = this.budget;
    data['status'] = this.status;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    if (this.partners != null) {
      data['partners'] = this.partners!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Partners {
  int? id;
  String? name;
  String? description;
  Null? link;
  String? logoUrl;
  Pivot? pivot;

  Partners(
      {this.id,
        this.name,
        this.description,
        this.link,
        this.logoUrl,
        this.pivot});

  Partners.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    link = json['link'];
    logoUrl = json['logo_url'];
    pivot = json['pivot'] != null ? new Pivot.fromJson(json['pivot']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['link'] = this.link;
    data['logo_url'] = this.logoUrl;
    // if (this.pivot != null) {
    //   data['pivot'] = this.pivot!.toJson();
    // }
    return data;
  }
}

class Pivot {
  int? projectId;
  int? partnerId;

  Pivot({this.projectId, this.partnerId});

  Pivot.fromJson(Map<String, dynamic> json) {
    projectId = json['project_id'];
    partnerId = json['partner_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['project_id'] = this.projectId;
    data['partner_id'] = this.partnerId;
    return data;
  }
}

// class Partners {
//   int? id;
//   String? name;
//   String? description;
//   Null? link;
//   String? logoUrl;
//
//   Partners({this.id, this.name, this.description, this.link, this.logoUrl});
//
//   Partners.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     description = json['description'];
//     link = json['link'];
//     logoUrl = json['logo_url'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['description'] = this.description;
//     data['link'] = this.link;
//     data['logo_url'] = this.logoUrl;
//     return data;
//   }
// }

class TraningStatistic {
  int? react;
  int? laravel;
  int? vue;
  int? nextJs;
  int? reactJs;
  int? evenietMinusAutem;

  TraningStatistic(
      {this.react,
        this.laravel,
        this.vue,
        this.nextJs,
        this.reactJs,
        this.evenietMinusAutem});

  TraningStatistic.fromJson(Map<String, dynamic> json) {
    react = json['React'];
    laravel = json['laravel'];
    vue = json['vue'];
    nextJs = json['next.js'];
    reactJs = json['react.js'];
    evenietMinusAutem = json['Eveniet minus autem'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['React'] = this.react;
    data['laravel'] = this.laravel;
    data['vue'] = this.vue;
    data['next.js'] = this.nextJs;
    data['react.js'] = this.reactJs;
    data['Eveniet minus autem'] = this.evenietMinusAutem;
    return data;
  }
}

class Members {
  int? id;
  String? firstName;
  String? lastName;
  String? email;
  String? phone;
  String? gender;
  String? image;
  String? positionDescription;
  String? overview;

  Members(
      {this.id,
        this.firstName,
        this.lastName,
        this.email,
        this.phone,
        this.gender,
        this.image,
        this.positionDescription,
        this.overview});

  Members.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    phone = json['phone'];
    gender = json['gender'];
    image = json['image'];
    positionDescription = json['position_description'];
    overview = json['overview'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['gender'] = this.gender;
    data['image'] = this.image;
    data['position_description'] = this.positionDescription;
    data['overview'] = this.overview;
    return data;
  }
}

class Activities {
  int? id;
  String? project;
  String? activityType;
  int? projectId;
  int? activityTypeId;
  String? title;
  String? description;
  String? image;
  String? date;

  Activities(
      {this.id,
        this.project,
        this.activityType,
        this.projectId,
        this.activityTypeId,
        this.title,
        this.description,
        this.image,
        this.date});

  Activities.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    project = json['project'];
    activityType = json['activity Type'];
    projectId = json['project_id'];
    activityTypeId = json['activity_type_id'];
    title = json['title'];
    description = json['description'];
    image = json['image'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['project'] = this.project;
    data['activity Type'] = this.activityType;
    data['project_id'] = this.projectId;
    data['activity_type_id'] = this.activityTypeId;
    data['title'] = this.title;
    data['description'] = this.description;
    data['image'] = this.image;
    data['date'] = this.date;
    return data;
  }
}

class Groups {
  int? id;
  String? title;
  String? description;
  String? image;
  int? hourCount;
  int? participantsCount;
  String? status;
  String? startDate;
  String? endDate;
  int? categoryId;
  int? projectId;
  String? category;
  String? project;

  Groups(
      {this.id,
        this.title,
        this.description,
        this.image,
        this.hourCount,
        this.participantsCount,
        this.status,
        this.startDate,
        this.endDate,
        this.categoryId,
        this.projectId,
        this.category,
        this.project});

  Groups.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    image = json['image'];
    hourCount = json['hour_count'];
    participantsCount = json['participants_count'];
    status = json['status'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    categoryId = json['category_id'];
    projectId = json['project_id'];
    category = json['category'];
    project = json['project'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['image'] = this.image;
    data['hour_count'] = this.hourCount;
    data['participants_count'] = this.participantsCount;
    data['status'] = this.status;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['category_id'] = this.categoryId;
    data['project_id'] = this.projectId;
    data['category'] = this.category;
    data['project'] = this.project;
    return data;
  }
}

class Questions {
  int? id;
  String? question;
  String? answer;
  String? createdAt;
  String? updatedAt;

  Questions(
      {this.id, this.question, this.answer, this.createdAt, this.updatedAt});

  Questions.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    question = json['question'];
    answer = json['answer'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['question'] = this.question;
    data['answer'] = this.answer;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
