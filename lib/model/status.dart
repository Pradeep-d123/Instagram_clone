import 'package:instagram/statusbar.dart';

class Mystatus {
  String? image;
  String? firstName;
  String? lastName;
  String? time;
  int? messageCount;
  Mystatus(
      {this.image,
      this.lastName,
      this.messageCount,
      this.firstName,
      this.time});

  static Mystatus frojson(Map<String, dynamic> json) {
    return Mystatus(
        image: json["profil_image"],
        firstName: json["my_name"],
        lastName: json["last_name"],
        time: json["date"],
        messageCount: json["message_count"]);
  }
}

class User {
  String? firstname;
  String? lastName;

  User({this.firstname, this.lastName});

  static User fromjson(Map<String, dynamic> json) {
    return User(firstname: json["first_name"], lastName: json["last_name"]);
  }
}

class Status {
  String? image;
  User? user;
  String? lastMessage;
  String? time;
  int? messageCount;
  Status(
      {this.image, this.lastMessage, this.messageCount, this.time, this.user});

  static Status fromjson(Map<String, dynamic> json) {
    return Status(
        image: json["profile_image"],
        user: json["user"],
        lastMessage: json["last_name"],
        time: json["date"],
        messageCount: json["message_count"]);
  }
}

class RecentUpdate {
  List<Status>? status;

  RecentUpdate({this.status});
  static RecentUpdate fromjson(Map<String, dynamic> json) {
    return RecentUpdate(
        status: json["status"].map<Status>((i) {
      return Status.fromjson(i);
    }).toList());
  }
}

class MainStatus {
  Mystatus? mystatus;
  RecentUpdate? recentUpdate;
  MainStatus({this.mystatus, this.recentUpdate});
  static MainStatus fromjson(Map<String, dynamic> json) {
    return MainStatus(
        mystatus: json["mytatus"], 
        recentUpdate: json["recent_updated"]);
  }
}
