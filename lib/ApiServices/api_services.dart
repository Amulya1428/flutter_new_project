
import 'package:flutter/material.dart';

import 'api_helper.dart';
class BookingsAPI {
  reviewDetailsApi(BuildContext context) async {
    var url = 'review details api url';
    var response = await ApiHelper().getTypeGet(context, url);
    return response;
  }
}