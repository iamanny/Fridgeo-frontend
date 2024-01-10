import 'dart:convert';
import 'package:http/http.dart' as http;


registerUserProd(String sex, String name, String surname){
    var userDataProd = {
      'sex': sex,
      'name': name,
      'surname': surname,
    };
}

Future<void> registerUser(String email, String password, String sex, String name, String surname) async {
  var url = Uri.parse('https://fridgeo.onrender.com/auth/register'); // Замените на ваш URL для регистрации

  var userData = {
    'email': email,
    'password': password,

    // Добавьте другие необходимые данные пользователя
  };

  var jsonData = jsonEncode(userData);

  try {
    var response = await http.post(
      url,
      headers:{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'JWT YourAccessToken', // Пример токена авторизации
        'Custom-Header': 'CustomValue',
      },
      body: jsonData,
    );

    if (response.statusCode == 200) {
      // Успешная регистрация пользователя
      print('Пользователь зарегистрирован успешно: ${response.body}');
    } else {
      // Обработка ошибок при регистрации
      print('Ошибка при регистрации пользователя: ${response.statusCode}');
      print('Причина ошибки: ${response.body}');
    }
  } catch (error) {
    // Обработка ошибок сети или запроса
    print('Ошибка при отправке запроса: $error');
  }
}