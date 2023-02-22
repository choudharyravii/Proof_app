// To parse this JSON data, do
//
//     final underStandingModel = underStandingModelFromJson(jsonString);

import 'dart:convert';

UnderStandingModel underStandingModelFromJson(String str) =>
    UnderStandingModel.fromJson(json.decode(str));

String underStandingModelToJson(UnderStandingModel data) =>
    json.encode(data.toJson());

class UnderStandingModel {
  UnderStandingModel({
    this.page,
    this.perPage,
    this.total,
    this.totalPages,
    this.data,
    this.support,
  });

  int? page;
  int? perPage;
  int? total;
  int? totalPages;
  List<UnderStandingDataDatum>? data;
  Support? support;

  factory UnderStandingModel.fromJson(Map<String, dynamic> json) =>
      UnderStandingModel(
        page: json["page"],
        perPage: json["per_page"],
        total: json["total"],
        totalPages: json["total_pages"],
        data: json["data"] == null
            ? []
            : List<UnderStandingDataDatum>.from(
                json["data"]!.map((x) => UnderStandingDataDatum.fromJson(x))),
        support:
            json["support"] == null ? null : Support.fromJson(json["support"]),
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "per_page": perPage,
        "total": total,
        "total_pages": totalPages,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "support": support?.toJson(),
      };
}

class UnderStandingDataDatum {
  UnderStandingDataDatum({
    this.id,
    this.name,
    this.year,
    this.color,
    this.pantoneValue,
  });

  int? id;
  String? name;
  int? year;
  String? color;
  String? pantoneValue;

  factory UnderStandingDataDatum.fromJson(Map<String, dynamic> json) =>
      UnderStandingDataDatum(
        id: json["id"],
        name: json["name"],
        year: json["year"],
        color: json["color"],
        pantoneValue: json["pantone_value"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "year": year,
        "color": color,
        "pantone_value": pantoneValue,
      };
}

class Support {
  Support({
    this.url,
    this.text,
  });

  String? url;
  String? text;

  factory Support.fromJson(Map<String, dynamic> json) => Support(
        url: json["url"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "text": text,
      };
}
