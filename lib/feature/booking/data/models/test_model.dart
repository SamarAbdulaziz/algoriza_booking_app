

class BookingStatusTest {
  BookingStatusTest({
    required this.status,
  });

  Status status;

  factory BookingStatusTest.fromJson(Map<String, dynamic> json) => BookingStatusTest(
    status: Status.fromJson(json["status"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status.toJson(),
  };
}

class Status {
  Status({
    required this.type,
    required this.title,
  });

  String type;
  Title title;

  factory Status.fromJson(Map<String, dynamic> json) => Status(
    type: json["type"],
    title: Title.fromJson(json["title"]),
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "title": title.toJson(),
  };
}

class Title {
  Title({
    required this.ar,
    required this.en,
  });

  String ar;
  String en;

  factory Title.fromJson(Map<String, dynamic> json) => Title(
    ar: json["ar"],
    en: json["en"],
  );

  Map<String, dynamic> toJson() => {
    "ar": ar,
    "en": en,
  };
}
