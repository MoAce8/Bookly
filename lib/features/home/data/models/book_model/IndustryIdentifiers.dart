class IndustryIdentifiers {
  IndustryIdentifiers({
    required this.type,
    required this.identifier,
  });

  final String? type;
  final String? identifier;

  factory IndustryIdentifiers.fromJson(Map<String, dynamic> json){
    return IndustryIdentifiers(
      type: json["type"],
      identifier: json["identifier"],
    );
  }

  Map<String, dynamic> toJson() => {
    "type": type,
    "identifier": identifier,
  };

}