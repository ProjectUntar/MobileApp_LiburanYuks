import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class LocationService {
  double lat;
  double lng;
  double distance;
  String name;
  String abstract;
  String categories;
  String country;

      "x-rapidapi-key": "265dda43e4mshcdb7ca383d22cffp14c349jsn08d62cd3a0c5",
      "x-rapidapi-host": "yummly2.p.rapidapi.com",
      "useQueryString": "true"

  Future<dynamic> getLocationData() async {
    LocationService locationService = LocationService();
    await locationService.getCurrentLocation();

    double lat = locationService.latitude;
    double lng = locationService.longitude;
  }
}

