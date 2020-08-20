
import 'package:http/http.dart' as http;
import '../models/claim.dart';

class ClaimService {
  var status = '';

  Future<void> saveClaim(ClaimModel claimdata) async {
    print('service called :' + claimdata.totalAmount);

    var url = 'http://dummy.restapiexample.com/api/v1/create';
    var response = await http
        .post(url, body: {"name": "test", "salary": "123", "age": "23"});
    print('Response status: ${response.statusCode}');
  }
}
