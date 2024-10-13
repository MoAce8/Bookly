class SearchInfo {
  SearchInfo({
    required this.textSnippet,
  });

  final String? textSnippet;

  factory SearchInfo.fromJson(Map<String, dynamic> json){
    return SearchInfo(
      textSnippet: json["textSnippet"],
    );
  }

  Map<String, dynamic> toJson() => {
    "textSnippet": textSnippet,
  };

}