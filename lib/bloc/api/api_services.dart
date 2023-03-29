import 'dart:convert';
import 'package:http/http.dart' as http;

part 'fam_api.dart';

class ApiServices {
    Future<List<FamData>> fetchFamData() async{
    final response = await http.get(Uri.parse("http://127.0.0.1:8000/api/listfam/"));
    final famData = json.decode(response.body);
    return famData.toList();
  }
}