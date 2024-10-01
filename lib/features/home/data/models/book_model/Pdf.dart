class Pdf {
  Pdf({
    this.isAvailable,
  });

  final bool? isAvailable;

  factory Pdf.fromJson(dynamic json) {
    return Pdf(
      isAvailable: json["isAvailable"],
    );
  }

  Map<String, dynamic> toJson() => {
    "isAvailable": isAvailable,
  };

}