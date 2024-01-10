import 'dart:convert';
import 'dart:html';
import 'package:http/http.dart' as http;


Future<void> loginUser(String username, String password) async {
  var url = Uri.https('fridgeo.onrender.com', '/auth/jwt/login'); // Замените на ваш URL для входа

  var userData = {
    'username': username,
    'password': password,
    // Другие данные, если необходимо
  };

  var jsonData = jsonEncode(userData);

  try {
    var response = await http.post(
      url,
      headers: {
       "Access-Control-Allow-Origin": "*",
        "Access-Control-Allow-Headers": "Origin, X-Requested-With, Content-Type, Accept",
       'accept': 'application/json',
        'Content-Type': 'application/x-www-form-urlencoded',
        "Access-control-allow-methods": "*",
        'X-Requested-With': 'XMLHttpRequest',
        'Access-Control-Allow-Credentials': 'true'
      },
      body: jsonData,
    );

    if (response.statusCode == 200) {
      // Успешный вход в аккаунт
      print('Вход выполнен успешно: ${response.body}');
      // Дополнительная обработка или навигация в вашем приложении
    } else {
      // Обработка ошибок входа
      print('Ошибка при входе: ${response.statusCode}');
      print('Причина ошибки: ${response.body}');
    }
  } catch (error) {
    // Обработка ошибок сети или запроса
    print('Ошибка при отправке запроса: $error');
  }
}