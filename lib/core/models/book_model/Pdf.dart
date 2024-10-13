class Pdf {
  Pdf({
    this.isAvailable,
    this.acsTokenLink,
  });

  final bool? isAvailable;
  final String? acsTokenLink;

  factory Pdf.fromJson(dynamic json) {
    return Pdf(
      isAvailable: json["isAvailable"],
      acsTokenLink: json["acsTokenLink"],
    );
  }

  Map<String, dynamic> toJson() => {
        "isAvailable": isAvailable,
        "acsTokenLink": acsTokenLink,
      };
}
