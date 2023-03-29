part of 'api_services.dart';

List<FamData> famFromJson(String str) =>
  List<FamData>.from(json.decode(str).map((x) => FamData.fromJson(x)));

String famToJson(List<FamData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson()))) ;

class FamData {
  FamData({required this.name, required this.price, required this.flow});

  String name;
  double price;
  double flow;

  factory FamData.fromJson(Map<String, dynamic> json) => FamData(
      name: json['cl_invest_name'],
      price: json['cl_current_price'],
      flow: json['cl_precentage_stonk']);

  Map<String, dynamic> toJson() => {
        "cl_invest_name": name,
        "cl_current_price": price,
        "cl_precentage_stonk": flow,
      };
}
