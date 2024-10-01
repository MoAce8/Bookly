import 'VolumeInfo.dart';
import 'SaleInfo.dart';
import 'AccessInfo.dart';
import 'SearchInfo.dart';


class BookModel {
  BookModel({
    required this.kind,
    required this.id,
    required this.etag,
    required this.selfLink,
    required this.volumeInfo,
    required this.saleInfo,
    required this.accessInfo,
    required this.searchInfo,
  });

  final String? kind;
  final String? id;
  final String? etag;
  final String? selfLink;
  final VolumeInfo? volumeInfo;
  final SaleInfo? saleInfo;
  final AccessInfo? accessInfo;
  final SearchInfo? searchInfo;

  factory BookModel.fromJson(Map<String, dynamic> json){
    return BookModel(
      kind: json["kind"],
      id: json["id"],
      etag: json["etag"],
      selfLink: json["selfLink"],
      volumeInfo: json["volumeInfo"] == null ? null : VolumeInfo.fromJson(json["volumeInfo"]),
      saleInfo: json["saleInfo"] == null ? null : SaleInfo.fromJson(json["saleInfo"]),
      accessInfo: json["accessInfo"] == null ? null : AccessInfo.fromJson(json["accessInfo"]),
      searchInfo: json["searchInfo"] == null ? null : SearchInfo.fromJson(json["searchInfo"]),
    );
  }

  Map<String, dynamic> toJson() => {
    "kind": kind,
    "id": id,
    "etag": etag,
    "selfLink": selfLink,
    "volumeInfo": volumeInfo?.toJson(),
    "saleInfo": saleInfo?.toJson(),
    "accessInfo": accessInfo?.toJson(),
    "searchInfo": searchInfo?.toJson(),
  };

}
