import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import './model/res.dart';

var client = http.Client();

const token =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjo3MjAzOTQxLCJleHAiOjE2MjU0Nzg3OTksImlhdCI6MTYyNDg3Mzk5OX0.xvqOLL9nELCgaRSGHb9xM8BoBXwjq6-kHvUKhTsODlI';
var host = 'api.dlab.cn';

const headers = {
  'api-version': 'v1.2.0',
  'request-source': 'web',
  'Authorization': 'Bearer $token',
};

Future<Res> fetchProducts() async {
  try {
    print('xxx');
    var requestUrl = Uri(
        scheme: 'http',
        host: host,
        path: '/app/ec/product/products_classify',
        queryParameters: {
          'page_index': '1',
          'shop_id': '1',
          'classify_id': '110',
          'page_size': '20',
          'actives': 'group_active,discount',
          'sort': '0',
          'channel': 'mini',
        });
    var res = await client.get(requestUrl, headers: headers);
    if (res.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(res.body) as Map<String, dynamic>;
      return Res.fromJson(jsonResponse);
    }
    return Res.failed();
  } catch (e) {
    print(e);
    return Res.failed();
  }
}
