import 'dart:convert';

import 'package:http/http.dart';
import '../models/claim.dart';

class ClaimService{

  bool isSuccess = false;

  Future<void> saveClaim(ClaimModel claimdata) async{
    print('service called :' + claimdata.totalAmount);

    Response response = await get('');
    Map data =jsonDecode(response.body);

    isSuccess = data['isSuccess'];
  }

}