import 'dart:convert';

List<MyWatchListItem> mywatchlistFromJSON(String str) => List<MyWatchListItem>.from(
  json.decode(str).map((x) => MyWatchListItem.fromJson(x))
);

String mywatchlistToJSON(List<MyWatchListItem> data) => 
  json.encode(List<dynamic>.from(data.map((x)=> x.toJson())));

class MyWatchListItem {
  MyWatchListItem({
    required this.model,
    required this.pk,
    required this.fields,
  });

  Model model;
  int pk;
  Fields fields;

  factory MyWatchListItem.fromJson(Map<String, dynamic> json) => MyWatchListItem(
    model: modelValues.map[json["model"]]!, 
    pk: json["pk"], 
    fields: Fields.fromJson(json["fields"]),
    );

  Map<String, dynamic> toJson() => {
    "model":modelValues.reverse[model],
    "pk": pk,
    "fields": fields.toJson(),
  };
}

class Fields{
  Fields({
    required this.title,
    required this.rating,
    required this.review,
    required this.watched,
    required this.releaseDate, 
  });

  String title;
  int rating;
  String review;
  bool watched;
  DateTime releaseDate;

  factory Fields.fromJson(Map<String, dynamic> json) => Fields(
    title: json["title"], 
    rating: json["rating"], 
    review: json["review"], 
    watched: json["watched"], 
    releaseDate: DateTime.parse(json["release_date"])
    );

  Map<String, dynamic> toJson() => {
    "title": title,
    "rating":rating,
    "review":review,
    "watched":watched,
    "release_date":"${releaseDate.year.toString().padLeft(4,'0')}-${releaseDate.month.toString().padLeft(2, '0')}-${releaseDate.day.toString().padLeft(2, '0')}",
  };
}

enum Model { MYWATCHLIST_WATCHLISTITEM }

final modelValues = EnumValues(map: {"mywatchlist.watchlistitem": Model.MYWATCHLIST_WATCHLISTITEM});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues({required this.map});

  Map<T, String> get reverse {
    reverseMap ??= map.map((k,v)=> MapEntry(v,k));
    return reverseMap!;
  }
}

