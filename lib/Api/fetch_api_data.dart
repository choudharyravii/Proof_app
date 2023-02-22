import 'package:flutter/foundation.dart';
import 'package:proof/Model/understand_data_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class FetchApi {
  static Future<UnderStandingModel> fetchdata() async {
    // Future<String> data;
    var request = await http.get(Uri.parse('https://reqres.in/api/unknown'));

    Map<String, dynamic> response = await json.decode(request.body);

    if (request.statusCode == 200) {
      if (kDebugMode) {
        print(response);
      }
      UnderStandingModel underStandingModel =
          UnderStandingModel.fromJson(response);
      return underStandingModel;
    } else {
      if (kDebugMode) {
        print(response);
      }
      UnderStandingModel underStandingModel =
          UnderStandingModel.fromJson(response);
      return underStandingModel;
    }
  }
}
