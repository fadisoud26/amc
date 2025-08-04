import 'dart:convert';

OfferModel offerModelFromJson(String str) =>
    OfferModel.fromJson(json.decode(str));

String offerModelToJson(OfferModel data) => json.encode(data.toJson());

class OfferModel {
  String result;
  List<Offer> offers;

  OfferModel({
    required this.result,
    required this.offers,
  });

  factory OfferModel.fromJson(Map<String, dynamic> json) => OfferModel(
        result: json["result"],
        offers: List<Offer>.from(json["offers"].map((x) => Offer.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "result": result,
        "offers": List<dynamic>.from(offers.map((x) => x.toJson())),
      };
}

class Offer {
  String name;
  List<String> description;
  String image;
  String startDate;
  String endDate;
  String oldPrice;
  String newPrice;
  String discount;
  DateTime pd;

  Offer({
    required this.name,
    required this.description,
    required this.image,
    required this.startDate,
    required this.endDate,
    required this.oldPrice,
    required this.newPrice,
    required this.discount,
    required this.pd,
  });

  factory Offer.fromJson(Map<String, dynamic> json) => Offer(
        name: json["name"],
        description: List<String>.from(json["description"].map((x) => x)),
        image: json["image"],
        startDate: json["start_date"],
        endDate: json["end_date"],
        oldPrice: json["old_price"],
        newPrice: json["new_price"],
        discount: json["discount"],
        pd: DateTime.parse(json["pd"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": List<dynamic>.from(description.map((x) => x)),
        "image": image,
        "start_date": startDate,
        "end_date": endDate,
        "old_price": oldPrice,
        "new_price": newPrice,
        "discount": discount,
        "pd": pd.toIso8601String(),
      };
}
