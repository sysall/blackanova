class BarberModel{
  late String name, address;
  late double rating;
  late int ratingTimes;

  BarberModel();

  BarberModel.fromJson(Map<String, dynamic> json){
    address = json['address'];
    name = json['name'];
    rating = double.parse(json['rating'] == null ? '0' : json['rating'].toString());
    ratingTimes = int.parse(json['ratingTimes'] == null ? '0' : json['ratingTimes'].toString());
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address'] = this.address;
    data['name'] = this.name;
    data['rating'] = this.rating;
    data['ratingTimes'] = this.ratingTimes;
    return data;
  }
}