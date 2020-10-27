import 'package:http/http.dart' as http; // alias http
import 'clases/pais.dart';

//import 'clases/reqres_respuesta.dart';

void getPais() {
  final pais = 'us';
  final url = 'https://restcountries.eu/rest/v2/alpha/$pais';
  http.get(url).then((res) {
    final col = paisFromJson(res.body);

    print('===================');
    print('Pais: ${col.name}');
    print('Población: ${col.population}');
    print('Fronteras');
    col.borders.forEach((f) => print(' $f'));
    print('Idioma: ${col.languages[0].nativeName}');
    print('Latitud: ${col.latlng[0]}');
    print('Longitud: ${col.latlng[1]}');
    print('Moneda: ${col.currencies[0].name}');
    print('Bandera: ${col.flag}');
    print('===================');
  }).catchError((error) => print(error));
}
