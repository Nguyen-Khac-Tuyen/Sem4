class Attraction {
  final int id;
  final String name;
  // final String city;
  // final String des;
  // final String img;
  // final int rate;

  Attraction({
    required this.id,
    required this.name,
    // required this.city,
    // required this.des,
    // required this.img,
    //required this.rate
  });

  factory Attraction.fromJson(Map<String, dynamic> json) {
    return Attraction(
      id: json['AttractionID'],
      name: json['AttractionName'],
      // city: json['City'],
      // des: json['Description'],
      // img: json['Image'],
      // rate: json['Rating'],
    );
  }

  Map<String, dynamic> toJson() => {
        'AttractionName': name,
        // 'City': city,
        // 'Description': des,
        // 'Image': img,
        // 'Rating': rate,
      };
}
