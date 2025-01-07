
import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {

String url = "https://api.hive.blog/";
 void fetchpost(){
  
final responce  = http.post(Uri.parse(url),

headers: {

'accept':'application/json, text/plain, */*',
'content-type': 'application/json'

},
body:jsonEncode({

"id":1,"jsonrpc":"2.0","method":"bridge.get_ranked_posts","params":{"sort":"trending","tag":"","observer":"hive.blog"}

} 
)
);
   print("responce is this $responce");



 }







}