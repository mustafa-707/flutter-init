import 'dart:convert';

Cars carsFromJson(String str) => Cars.fromJson(json.decode(str));

String carsToJson(Cars data) => json.encode(data.toJson());

class Cars {
  Cars({
    this.data,
  });

  List<Datum>? data;

  factory Cars.fromJson(Map<String, dynamic> json) => Cars(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    this.category,
    this.cars,
  });

  String? category;
  List<Car>? cars;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        category: json["category"],
        cars: List<Car>.from(json["cars"]!.map((x) => Car.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "category": category,
        "cars": List<dynamic>.from(cars!.map((x) => x.toJson())),
      };
}

class Car {
  Car({
    this.isSelected,
    this.likes,
    this.dislikes,
    this.use,
    this.title,
    this.name,
    this.price,
    this.currancy,
    this.date,
    this.distance,
    this.type,
    this.version,
    this.gear,
    this.petrol,
    this.images,
  });

  bool? isSelected;
  int? likes;
  int? dislikes;
  String? use;
  String? title;
  String? name;
  String? price;
  String? currancy;
  String? date;
  String? distance;
  String? type;
  String? version;
  String? gear;
  String? petrol;
  List<String>? images;

  factory Car.fromJson(Map<String, dynamic> json) => Car(
        isSelected: json["isSelected"],
        likes: json["likes"],
        dislikes: json["dislikes"],
        use: json["use"],
        title: json["title"],
        name: json["name"],
        price: json["price"],
        currancy: json["currancy"],
        date: json["date"],
        distance: json["distance"],
        type: json["type"],
        version: json["version"],
        gear: json["gear"],
        petrol: json["petrol"],
        images: List<String>.from(json["images"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "isSelected": isSelected,
        "likes": likes,
        "dislikes": dislikes,
        "use": use,
        "title": title,
        "name": name,
        "price": price,
        "currancy": currancy,
        "date": date,
        "distance": distance,
        "type": type,
        "version": version,
        "gear": gear,
        "petrol": petrol,
        "images": List<dynamic>.from(images!.map((x) => x)),
      };
}
