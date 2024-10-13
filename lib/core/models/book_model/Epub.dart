class Epub {
  Epub({
    required this.isAvailable,
  });

  final bool? isAvailable;

  factory Epub.fromJson(Map<String, dynamic> json){
    return Epub(
      isAvailable: json["isAvailable"],
    );
  }

  Map<String, dynamic> toJson() => {
    "isAvailable": isAvailable,
  };

}