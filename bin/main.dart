import 'package:apis/clases/reqres_respuesta.dart';
import 'package:http/http.dart' as http; // alias http
import 'package:apis/apis.dart' as apis;

void main(List<String> arguments) {
  final url = 'https://reqres.in/api/users?page=2';
  http.get(url).then((res) {
    final resReqRes = reqResRespuestaFromJson(res.body);
    print('page: ${resReqRes.page}');
    print('id del tercer elemento: ${resReqRes.data[2].id}');
  });
}
